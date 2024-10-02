import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class VerifyButton extends StatelessWidget {

final VoidCallback onPressed; // Will be excuted when an event happen

  const VerifyButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        ),
        child: Text(
          "continue".tr(),
          style: const TextStyle(
            fontFamily: "SourceSans3",
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.white
            ),
          )
      )
        );
  }
}
