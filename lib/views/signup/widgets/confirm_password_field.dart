import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
class ConfirmPasswordField extends StatelessWidget {
  final Function(String) onSaved;

  ConfirmPasswordField({required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Confirm Password".tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: AppColors.primary,
              fontFamily: "lato",
            ),
          ),
          SizedBox(height: 8.0),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Re-enter your password".tr(),
              hintStyle: TextStyle(color: AppColors.grey, fontSize: 18.0, fontFamily: "lato"),
              filled: true,
              fillColor: AppColors.blue,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              suffixIcon: Icon(Icons.visibility_off, color: AppColors.grey2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please confirm your password";
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
