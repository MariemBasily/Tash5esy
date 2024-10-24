import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class SignupPrompt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t Have An Account? '.tr(),
          style: TextStyle(color: AppColors.grey2,fontFamily: "lato"),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/signup');
          },
          child: Text(
            'Sign Up'.tr(),
            style: TextStyle(
              color: AppColors.secondary,
              fontWeight: FontWeight.bold,
              fontFamily: "lato",
            ),
          ),
        ),
      ],
    );
  }
}
