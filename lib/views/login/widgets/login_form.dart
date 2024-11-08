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
        const SizedBox(height: 6),
        TextFormField(
          controller: controller.nationalIdController,
          decoration: InputDecoration(
            hintText: 'E.G., 123-456-7890'.tr(),
            hintStyle: AppTextStyles.bodyTextSmall.copyWith(
              color: AppColors.grey,
            ),
            filled: true,
            fillColor: AppColors.blue,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your National ID';
            }
            return null;
          },
          onSaved: (value) => controller.onSaveNationalId(value ?? ''),
        ),
        const SizedBox(height: 20),
        Text(
          'Password'.tr(),
          style: AppTextStyles.bodyTextSmall.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller.passwordController,
          obscureText: true,
          decoration: InputDecoration(
            hintText: '**********'.tr(),
            hintStyle: AppTextStyles.bodyTextSmall.copyWith(
              color: AppColors.grey,
            ),
            filled: true,
            fillColor: AppColors.blue,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
          onSaved: (value) => controller.onSavePassword(value ?? ''),
        ),
      ],
    );
  }
}
