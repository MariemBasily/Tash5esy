import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
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
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          // If the image is selected, show it, otherwise show the Icon
          if (imagePath != null && imagePath!.isNotEmpty)
            Image.file(
              File(imagePath!), // Display the selected image
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            )
          else
            Image.asset("assets/images/selfi photo.png",height: 100, width: 100), // Show the default icon when no image
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.secondary,
            ),
          ),
          SizedBox(height: 8),
          Text(subText, style: TextStyle(color: AppColors.grey2)),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              backgroundColor: AppColors.primary,
            ),
            child: Row(
              mainAxisSize:
                  MainAxisSize.min, // This ensures the button fits the content
              children: [
                Image.asset("assets/icons/take selfi _icon.png",height: 20, width: 20), // Add camera icon
                SizedBox(width: 8), // Space between icon and text
                Text(
                  "Take a selfie".tr(),
                  style: TextStyle(color: AppColors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
