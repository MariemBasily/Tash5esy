import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart'; 
import 'package:easy_localization/easy_localization.dart';

class SplashTitle extends StatelessWidget {
  final String title;

  const SplashTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('tash'.tr()); 
    print('5esy'.tr()); 
    return RichText(
      text: TextSpan(
        text: 'Tash'.tr(), 
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold, 
          color: AppColors.green, 
          fontFamily: "lato",
        ),
        children: [
          TextSpan(
            text: '5esy'.tr(), 
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold, 
              color: AppColors.secondary,
              fontFamily: "lato",
            ),
          ),
        ],
      ),
    );
  }
}
