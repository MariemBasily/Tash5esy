import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/models/login_model.dart';

class LoginController {
  final nationalIdController = TextEditingController();
  final passwordController = TextEditingController();

  String? nationalIdError;
  String? passwordError;

  // Validate and return UserLoginModel if valid
  UserloginModel? login() {
    final nationalId = nationalIdController.text;
    final password = passwordController.text;

    // Reset errors before validating
    nationalIdError = null;
    passwordError = null;

    // Perform National ID validation: must be exactly 14 digits
    if (nationalId.isEmpty) {
      nationalIdError = "National ID cannot be empty".tr();
    } else if (!_isValidNationalId(nationalId)) {
      nationalIdError = "National ID must be 14 digits.".tr();
    }

    // Perform Password validation: must be at least 6 characters, contain symbols, numbers, lowercase, and uppercase
    if (password.isEmpty) {
      passwordError = "Password cannot be empty".tr();
    } else if (!_isValidPassword(password)) {
      passwordError =
          "Password must be at least 6 characters,"
          "must contain upper & lower case letters &" 
          "numbers,and symbols.".tr();
    }

    // If no errors, return the model
    if (nationalIdError == null && passwordError == null) {
      return UserloginModel(nationalId: nationalId, password: password);
    }
    return null;
  }

  // Dispose controllers when not needed
  void dispose() {
    nationalIdController.dispose();
    passwordController.dispose();
  }

  // Helper function to validate the National ID (exactly 14 digits)
  bool _isValidNationalId(String nationalId) {
    final RegExp idRegExp = RegExp(r'^\d{14}$'.tr()); // Only 14 digits
    return idRegExp.hasMatch(nationalId);
  }

  // Helper function to validate password (min 6 characters, with special conditions)
  bool _isValidPassword(String password) {
    final RegExp passwordRegExp = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{6,}$'.tr(),
    );
    return passwordRegExp.hasMatch(password);
  }
}
