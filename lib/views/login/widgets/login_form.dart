import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/login_controller.dart';
import 'package:tash5esy_app/core/style/app_text_styles.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginForm extends StatelessWidget {
  final LoginController controller;

  LoginForm({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'National ID'.tr(),
          style: AppTextStyles.bodyTextSmall.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: TextField(
            controller: controller.nationalIdController,
            decoration: InputDecoration(
              hintText: 'E.G., 123-456-7890'.tr(),
              hintStyle: AppTextStyles.bodyTextSmall.copyWith(
                color: AppColors.grey,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              errorText: controller.nationalIdError,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Password'.tr(),
          style: AppTextStyles.bodyTextSmall.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.bold, // Ensure bold for emphasis
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: TextField(
            controller: controller.passwordController,
            obscureText: true,
            decoration: InputDecoration(
              hintText: '**********'.tr(),
              hintStyle: AppTextStyles.bodyTextSmall.copyWith(
                color: AppColors.grey,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              errorText: controller.passwordError,
            ),
          ),
        ),
      ],
    );
  }
}
