import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final Color backgroundColor;
  final Color iconColor;

  CustomAppBar({
    required this.title,
    this.centerTitle = true,
    this.backgroundColor = AppColors.white,
    this.iconColor = AppColors.secondary,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.secondary,
          fontFamily: "Lato",
          fontWeight: FontWeight.w600, 
          fontSize: 26,
        ),
      ),
      backgroundColor: backgroundColor,
      iconTheme: IconThemeData(color: iconColor),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
