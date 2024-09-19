import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/demo/demo_screen.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const DemoScreen()));
        },
        style: ElevatedButton.styleFrom(
         backgroundColor: AppColors.secondary,
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
         ),
        ),
        child: const Text(
          "Continue",
          style: TextStyle(
            fontFamily: "SourceCodePro",
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.white
            ),
          )
      )
        );
  }
}
