import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class TextHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "In Order To Complete Your Signing Up Please Upload Your National ID Card".tr(),
      textAlign: TextAlign.center,
      style: TextStyle(color: AppColors.grey,fontFamily: "lato"),
    );
  }
}
