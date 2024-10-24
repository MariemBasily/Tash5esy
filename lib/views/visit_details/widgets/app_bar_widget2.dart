import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class AppBarWidget2 extends StatelessWidget {
  final VoidCallback onPress;
  const AppBarWidget2({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 110,
      centerTitle: true,
      backgroundColor: AppColors.primary,
      leading: Container(
        margin: const EdgeInsets.all(10.0),
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: IconButton(
          onPressed: onPress,
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: AppColors.secondary, size: 18),
        ),
      ),
      title: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            "visit_details".tr(),
            style: const TextStyle(
                fontFamily: "lato",
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          Text(
            textAlign: TextAlign.center,
            "your_health_tracker".tr(),
            style: const TextStyle(
                fontFamily: "lato", fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
