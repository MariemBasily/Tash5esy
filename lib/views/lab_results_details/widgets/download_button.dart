import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class DownloadButtonWidget extends StatelessWidget {
  final Function onTap;

  DownloadButtonWidget({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primary, width: 2),
        ),
        child: Icon(
          Icons.download,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
