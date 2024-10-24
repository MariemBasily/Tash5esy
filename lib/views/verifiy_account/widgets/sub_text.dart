import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class SubText extends StatelessWidget {
  final String text;

  const SubText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: AppColors.grey,
        fontFamily: "lato",
      ),
      textAlign: TextAlign.center,
    );
  }
}
