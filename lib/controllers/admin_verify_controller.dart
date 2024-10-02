import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/demo/demo_screen.dart';

class AdminVerifyController {
  void onContinue(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DemoScreen())
    );
  }
}
