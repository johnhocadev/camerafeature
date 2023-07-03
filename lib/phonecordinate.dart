import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  // double posX = 180, posY = 350;
double posX = 0, posY = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Center(
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            border: Border.all(color: Colors.black, width: 2)
          ),
          child: Stack(


            children: [
              const Align(
                alignment: AlignmentDirectional.center,
                child: Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
              ),
               Align(
                alignment: AlignmentDirectional.center,
                child: VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                ),
              ),
              Center(
                child: StreamBuilder<GyroscopeEvent>(
                    stream: SensorsPlatform.instance.gyroscopeEvents,
                    builder: (context, snapshot) {
                      // print("");
                      if (snapshot.hasData) {
                        posX = posX + (snapshot.data!.y*2);
                        posY = posY + (snapshot.data!.x*2);
                      }
                      return Transform.translate(
                        offset: Offset(posX, posY),
                        child: const CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.red,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}