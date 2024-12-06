import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class BottomNavigationButton extends StatelessWidget {
  final VoidCallback onPressed;

  const BottomNavigationButton({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: const Text(
          'Next',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: "lato"
          ),
        ),
      ),
    );
  }
}
