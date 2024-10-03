import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/OvalBottomClipper.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        ClipPath(
          clipper: OvalBottomClipper(),
          child: Container(
            height: 300, // Height for the curved background
            color: Color(0xFF034078),
          ),
        ),
      ],
    );
  }
}
