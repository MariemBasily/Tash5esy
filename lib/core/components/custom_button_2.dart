import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart'; 
class CustomButton2 extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomButton2({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 183, 
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondary,
          padding: const EdgeInsets.symmetric(vertical: 15), 
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10), 
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18, 
            fontWeight: FontWeight.w500, 
          ),
        ),
      ),
    );
  }
}
