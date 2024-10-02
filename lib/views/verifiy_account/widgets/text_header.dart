import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class TextHeader extends StatelessWidget {
  final String title;

  const TextHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.secondary,
      ),
    );
  }
}
