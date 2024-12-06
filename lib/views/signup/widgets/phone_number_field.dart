import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/app_text_styles.dart';
import 'package:tash5esy_app/core/style/colors.dart';
class PhoneNumberField extends StatelessWidget {
  final Function(String) onSaved;

  PhoneNumberField({required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone Number".tr(),
            style: AppTextStyles.bodyTextSmall.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "E.G., +20154218457".tr(),
              hintStyle: AppTextStyles.bodyTextSmall.copyWith(
                color: AppColors.grey,
              ),
              filled: true,
              fillColor: AppColors.blue,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your phone number";
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
