import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/app_text_styles.dart';
import 'package:tash5esy_app/core/style/colors.dart';
class PhoneNumberDisplay extends StatelessWidget {
  final String phoneNumber;

  const PhoneNumberDisplay({required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Text(
      phoneNumber,
      style: AppTextStyles.bodyTextMedium2.copyWith(
        color: AppColors.secondary,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
