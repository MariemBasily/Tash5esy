import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/core/style/app_text_styles.dart';
import 'dart:io';

class PhotoUploadWidget extends StatelessWidget {
  final String label;
  final String subText;
  final VoidCallback onPressed;
  final String? imagePath;

  const PhotoUploadWidget({
    required this.label,
    required this.subText,
    required this.onPressed,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          if (imagePath != null && imagePath!.isNotEmpty)
            Image.file(
              File(imagePath!),
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            )
          else
            Image.asset(
              "assets/images/nid card.png",
              height: 80,
              width: 80,
            ),
          SizedBox(height: 8),
          Text(
            label,
            style: AppTextStyles.bodyTextSmall.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.secondary,
            ),
          ),
          SizedBox(height: 4),
          Text(
            subText,
            style: AppTextStyles.bodyTextForm.copyWith(color: AppColors.grey2),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              backgroundColor: AppColors.primary,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/icons/take photo_icon.png",
                  height: 16,
                  width: 16,
                ),
                SizedBox(width: 4),
                Text(
                  "Take a Photo".tr(),
                  style: AppTextStyles.bodyTextForm.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
