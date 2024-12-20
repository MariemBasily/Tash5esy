import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class BottomNavigationButton2 extends StatelessWidget {
  final VoidCallback onPressed;

  const BottomNavigationButton2({required this.onPressed, super.key});

  @override
 Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 16), // Add padding at the top
    child: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: const Text(
          'Next',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: "lato",
          ),
        ),
      ),
    ),
  );
}
}
