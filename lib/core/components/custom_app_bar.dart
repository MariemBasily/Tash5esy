import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final Color backgroundColor;
  final Color iconColor;
  final TextStyle? titleTextStyle;

  CustomAppBar({
    required this.title,
    this.centerTitle = true,
    this.backgroundColor = AppColors.white,
    this.iconColor = AppColors.secondary,
    this.titleTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      title: Text(
        title,
        style: titleTextStyle ??
            TextStyle(
              color: AppColors.secondary,
              fontFamily: "lato",
              fontWeight: FontWeight.bold,
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
