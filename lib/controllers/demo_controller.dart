import 'package:flutter/material.dart';
import 'package:tash5esy_app/controller_screen.dart';
import 'package:tash5esy_app/views/demo/demo_screen_2.dart';
import 'package:tash5esy_app/views/demo/demo_screen_3.dart';

class DemoController {
  void nextPress1(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DemoScreen2()));
  }
  void nextPress2(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DemoScreen3()));
  }
  void startPress(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ControllerScreen()));
  }
}
