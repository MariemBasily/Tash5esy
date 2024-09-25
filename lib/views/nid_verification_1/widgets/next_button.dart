import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button.dart';
import 'package:tash5esy_app/views/nid_Verification_2/nid_verification_screen_2.dart';

class NextButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      label: "Next".tr(),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => IdentityVerificationScreen2()),
        );
      },
    );
  }
}
