import 'package:app/cameraLogic.dart';
import 'package:flutter/material.dart';

import 'cameraShotPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CameraService().locator;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  MainScreen(),
    );
  }
}