import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/app_text_styles.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:easy_localization/easy_localization.dart';

class SplashTitle extends StatelessWidget {
  final String title;

  const SplashTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('tash'.tr());
    print('5esy'.tr());
    return RichText(
      text: TextSpan(
        text: 'Tash'.tr(),
        style: AppTextStyles.solganText.copyWith(
          color: AppColors.green, 
        ),
        children: [
          TextSpan(
            text: '5esy'.tr(),
            style: AppTextStyles.solganText.copyWith(
              color: AppColors.secondary, 
            ),
          ),
        ],
      ),
    );
  }
}
