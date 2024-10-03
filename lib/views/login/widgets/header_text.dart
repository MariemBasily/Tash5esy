import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class SignInHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Let's sign you in".tr(),
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: AppColors.secondary,
            fontFamily: "lato",
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Login To Your Existing Account'.tr(),
          style: TextStyle(
            fontSize: 16,
            color: AppColors.grey,
            fontFamily: "lato",
          ),
        ),
      ],
    );
  }
}
