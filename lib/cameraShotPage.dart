import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app/picture_priview.dart';
import 'package:app/utils/constants.dart';
import 'package:app/utils/custom_button.dart';
import 'package:app/utils/dotted_line_test.dart';
import 'package:camera/camera.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensors_plus/sensors_plus.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<CameraDescription> cameras;
  //TODO error causing line 
   late CameraController cameraController;
  
  int direction = 0;
  double posX = 2, posY = 5;

late Rect _objectRect;
//
  late Rect _rect, _Rect, _referenceRect;
  late Offset _start, _finish;
  PageController _pageViewController = PageController();


  @override
  void initState() {
  super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
 
    startCamera(direction);

    WidgetsBinding.instance.addPostFrameCallback((_){

 customAlertDialog();

});
  }

  void startCamera(int direction) async {
    cameras = await availableCameras();
// var cameraSpecs = const CameraDescription(name: 'photo ', lensDirection: CameraLensDirection.back, sensorOrientation: 180);
    cameraController = CameraController(
    
      cameras[direction],
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.yuv420,
   
      
    );

    await cameraController.initialize().then((value) {
      if(!mounted) {
        return;
      }
      setState(() {}); //To refresh widget
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    cameraController.dispose();
    super.dispose();
  }

@override
  void didChangeDependencies() {
  
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
 
    var size =MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
      return Scaffold(
        backgroundColor: Colors.transparent,


        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            //TODO camera itself 
            children: [
              Positioned(
                left: 25,
                  right: 25,
                  child: CameraPreview(cameraController)),
//TODO coordinator
          Positioned(
                           bottom: height /2.42,
                left: 25,
          child: CircleAvatar(
          
            backgroundColor: const Color.fromARGB(255, 202, 233, 248),
            radius: 37,

            child: Stack(
          
          
              children: [
                const Align(
                  alignment: AlignmentDirectional.center,
                  child: Divider(
                    thickness: 2.5,
                    color: Colors.red,
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional.center,
                  child: VerticalDivider(
                    thickness: 2.5,
                    color: Colors.red,
                  ),
                ),
                Center(
                  child: StreamBuilder<GyroscopeEvent>(
                      stream: SensorsPlatform.instance.gyroscopeEvents,
                      builder: (context, snapshot) {
          
                        if (snapshot.hasData) {
                      
                          posX = posX + (snapshot.data!.y*3);
                          posY = posY + (snapshot.data!.x*3);
                        }
                        return Transform.translate(
                          filterQuality: FilterQuality.high,
                          offset: Offset( posY,posY ),
                        
                          child: const CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.red,
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          ),
          //TODO picture taking function
              Positioned(
                bottom: height /2.7,
                right: 13,
                child: GestureDetector(
                  onTap: () {
                    cameraController.takePicture().then((XFile? file) {
                      if(mounted) {
                        if(file != null) {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> PreviewPage(picture: file,)));
                        }
                      }
                    });
                  },
                  child: button(Icons.camera_alt_outlined, Alignment.bottomCenter,),
                ),
              ),
              //TODO straight line in the middle of screen 
            
              const Align(
                alignment: AlignmentDirectional.center,
                child: MySeparator()),
                //TODO length identifier 
                const Align(
                alignment: AlignmentDirectional.center,
                child:Padding(
                  padding: EdgeInsets.only(right: 260),
                  child: LengthIdentifier(),
                ) ),
              //TODO here must be the length of fish
                const Align(
                alignment: AlignmentDirectional.center,
                child:Padding(
                  padding: EdgeInsets.only(left: 240),
                  child: LengthIdentifier(),
                ) ),

              Align(
                alignment: AlignmentDirectional.topCenter,
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      '평평한 곳에서 촬영해주세요',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                  
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Align(

                  alignment: AlignmentDirectional.bottomCenter,
                  child: DottedBorder(
                    color: Colors.grey,
                    dashPattern: const [8, 4],
                    strokeWidth: 3,
                    child: const SizedBox(
                      height: 75,
                      width: 200,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      );

}
 
 customAlertDialog(){
  return showDialog(context: context, builder: (_){
    return CupertinoAlertDialog(
    title: const Text('알림'),
    content: const Text('핸드폰 회전을 켜서 물체를 측정하기 위해 전화기를 똑바로 유지하십시오.'),
    actions: [
      GestureDetector(
        onTap: ()=> Navigator.pop(context),
        child: const CupertinoDialogAction(child:  Text('OK')))
    ],
  );
  }
  );
 }
}















//     var objectLength = _objectRect.height /
//     (_referenceRect.height / A4Height);
// var objectWidth = _objectRect.width /
//     (_referenceRect.height / A4Height);
//     objectLength =
//     double.parse(objectLength.toStringAsFixed(2));
// objectWidth =
//     double.parse(objectWidth.toStringAsFixed(2));
//   }

// final  A4Height = 11.6929;


              // Align(
              //   child: IconButton(
              //     icon: const Icon(Icons.alarm),
              //     onPressed: (){
              //        var objectLength = _objectRect.height /
              //                 (_referenceRect.height / A4Height);
              //             var objectWidth = _objectRect.width /
              //                 (_referenceRect.height / A4Height);
              //             objectLength =
              //                 double.parse(objectLength.toStringAsFixed(2));
              //             objectWidth =
              //                 double.parse(objectWidth.toStringAsFixed(2));
              //                   showDialog(
              //               context: context,
              //               builder: (context) => Dialog(
              //                 child: Padding(
              //                   padding: const EdgeInsets.all(15.0),
              //                   child: Column(
              //                     mainAxisSize: MainAxisSize.min,
              //                     children: <Widget>[
              //                       Text(
              //                         "Saved!",
              //
              //                       ),
              //                       ListTile(
              //                         leading: Text("Object Length:"),
              //                         title: Text("$objectLength"),
              //                         trailing: Text("In"),
              //                       ),
              //                       ListTile(
              //                         leading: Text("Object Width:"),
              //                         title: Text("$objectWidth"),
              //                         trailing: Text("In"),
              //                       ),
              //                       MaterialButton(
              //                         color: Colors.blue,
              //                         child: Text(
              //                           "Done",
              //
              //                         ),
              //                         onPressed: () {
              //                           Navigator.pop(context, true);
              //                         },
              //                       )
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             );
              //     },
              //
              //   ),
              // )