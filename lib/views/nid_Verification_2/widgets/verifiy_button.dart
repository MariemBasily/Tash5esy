import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button_2.dart';
import 'package:tash5esy_app/views/home_screen_locked/home_screen_locked.dart';

class verifiyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomButton2(
      label: "Verify My Identity".tr(),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreenLocked()),
        );
      },
    );
  }
}
