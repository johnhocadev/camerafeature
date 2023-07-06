import 'package:app/cameraLogic.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'cameraShotPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await availableCameras();
  CameraService().locator;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}