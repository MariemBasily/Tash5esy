import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed, required String text, required Text child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondary, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), 
),
          minimumSize: const Size(200, 50), 
          padding: const EdgeInsets.symmetric(
              vertical: 10, horizontal: 60),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white, 
            fontSize: 18, 
            fontWeight: FontWeight.bold, 
          ),
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