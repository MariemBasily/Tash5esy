import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart'; 

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomButton( {required this.label, required this.onPressed, required String text, required Text child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w200),
      ),
     child: Text(
        label,
        style: TextStyle(
          color: Colors.white, // Set label text color to white
          fontSize: 18, // Optional: font size adjustment
        ),
      ),
    );
  }
}
 // this custom button of :
 //login page/
 // sign up page/ 
 //Verify Number(Verify Account)&NID Verfication 1 (Confirmation) --> with some changes in sizes/ 
 //Forgot Password/ 
 //Code Verfication/ 
 //Reset Password/ 
 //logout.