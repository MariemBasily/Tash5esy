import 'package:flutter/material.dart';

class OvalBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start from top left of the widget
    path.lineTo(0.0, size.height - 50);

    // Create an arc towards the bottom right
    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    // Line to the top right corner
    path.lineTo(size.width, 0.0);

    // Close the path to form a closed shape
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
