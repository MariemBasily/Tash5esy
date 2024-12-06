import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tash5esy_app/core/style/app_text_styles.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class SignInHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Let's sign you in".tr(),
          style: AppTextStyles.bodyTextMedium2.copyWith(
            color: AppColors.secondary,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Login To Your Existing Account'.tr(),
          style: AppTextStyles.bodyTextSmall.copyWith(
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
