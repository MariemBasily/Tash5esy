import 'package:flutter/material.dart';

class SplashController {
  Future<void> startSplash(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacementNamed(context, '/get_started');
  }
}
