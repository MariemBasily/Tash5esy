import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/splash_controller.dart';
import 'package:tash5esy_app/models/splash_model.dart';
import 'widgets/splash_logo.dart';
import 'widgets/splash_title.dart';

class SplashScreenView extends StatefulWidget {
  final SplashModel model;

  const SplashScreenView({Key? key, required this.model}) : super(key: key);

  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  late SplashController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SplashController();
    _controller.startSplash(context); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SplashLogo(), 
            const SizedBox(height: 10),
            SplashTitle(title: widget.model.title), 
          ],
        ),
      ),
    );
  }
}
