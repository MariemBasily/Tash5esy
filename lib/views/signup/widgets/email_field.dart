import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
class EmailField extends StatelessWidget {
  final Function(String) onSaved;

  EmailField({required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email".tr(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: AppColors.primary,
              fontFamily: "SourceSans3",
            ),
          ),
          SizedBox(height: 8.0),
          TextFormField(
            decoration: InputDecoration(
              hintText: "example@example.com".tr(),
              hintStyle: TextStyle(color: AppColors.grey, fontSize: 18.0, fontFamily: "SourceSans3"),
              filled: true,
              fillColor: AppColors.blue,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
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
