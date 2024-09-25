import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class TextHeader2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "It’s required by law to verify your identity as a new user".tr(),
      textAlign: TextAlign.center,
      style: TextStyle(color: AppColors.grey),
    );
  }
}
