import 'package:flutter/material.dart';
import 'package:tash5esy_app/models/verifiy__account_model.dart';

class PhoneVerificationController extends ChangeNotifier {
  final PhoneVerificationModel model;
  String enteredCode = '';

  PhoneVerificationController({required this.model});

  void updateCode(String code) {
    enteredCode = code;
    notifyListeners();
  }

  Future<void> resendCode(BuildContext context, String phoneNumber) async {
    await model.sendVerificationCode();
    print("Resending code...");
  }

  Future<void> verifyCode(BuildContext context, String enteredCode) async {
    if (enteredCode.length == 6) {
      bool isValid = await model.verifyCode(enteredCode);
      if (isValid) {
        // Navigate to the next screen or show a success message
        print("Code verified successfully");
      } else {
        // Show an error message
        print("Invalid code");
      }
    } else {
      // Show an error if code is not 6 digits
      print("Enter a valid 6-digit code");
    }
  }
}
