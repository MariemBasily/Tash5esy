import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class CustomText extends StatelessWidget {
  final String text;

  const CustomText({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.secondary,
      ),
    );
  }
}
