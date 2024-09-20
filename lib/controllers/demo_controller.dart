import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/demo/demo_screen_2.dart';

class DemoController {
  void nextPress(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DemoScreen2()));
  }
}
