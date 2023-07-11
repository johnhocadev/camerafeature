// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tts/flutter_tts.dart';

Future newCustomAction(
  BuildContext context,
  String? text,
) async {
  // play text to speech in korean voice
  FlutterTts flutterTts = FlutterTts();

  await flutterTts.setLanguage("ko-KR");
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.setPitch(1.0);
  await flutterTts.speak(text!);
}
