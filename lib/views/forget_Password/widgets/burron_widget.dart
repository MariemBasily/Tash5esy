import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/code_verification/code_verification_screen.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 150,
        height: 40,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CodeVerificationScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: Text(
              " Send Code",
              style: TextStyle(
                fontFamily: "lato",
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.grey,
              ),
            )));
  }
}
