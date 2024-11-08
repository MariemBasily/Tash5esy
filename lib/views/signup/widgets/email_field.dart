import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/app_text_styles.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class EmailField extends StatelessWidget {
  final Function(String) onSaved;

  EmailField({required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 4.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email".tr(),
            style: AppTextStyles.bodyTextSmall.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "example@example.com".tr(),
              hintStyle:
                  AppTextStyles.bodyTextSmall.copyWith(color: AppColors.grey),
              filled: true,
              fillColor: AppColors.blue,
              contentPadding: EdgeInsets.symmetric(
                  vertical: 6.0, horizontal: 12.0), 
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(8.0), 
                borderSide: BorderSide.none,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your email";
              }
              return null;
            },
            onSaved: (value) => onSaved(value ?? ''),
          ),
        ],
      ),
    );
  }
}
