import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button.dart'; 
import 'package:tash5esy_app/views/verifiy_account/verifiy_account_screen.dart';

class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      label: "Next".tr(),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PhoneVerificationScreen(phoneNumber: '',)),
        );
      }, text: '', child: Text(''),
    );
  }
}
