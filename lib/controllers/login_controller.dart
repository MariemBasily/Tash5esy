import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/models/login_model.dart';

class LoginController {
  final nationalIdController = TextEditingController();
  final passwordController = TextEditingController();

  String? nationalIdError;
  String? passwordError;

  UserloginModel? login() {
    final nationalId = nationalIdController.text;
    final password = passwordController.text;

    nationalIdError = null;
    passwordError = null;

    // National ID Validation
    if (nationalId.isEmpty) {
      nationalIdError = "National ID cannot be empty.".tr();
    } else if (!_isValidNationalId(nationalId)) {
      nationalIdError = "National ID must be 14 digits.".tr();
    }

    // Password Validation
    if (password.isEmpty) {
      passwordError = "Password cannot be empty.".tr();
    } else if (!_isValidPassword(password)) {
      passwordError =
          "Password must be at least 6 characters, with letters, numbers, and symbols.".tr();
    }

    if (nationalIdError == null && passwordError == null) {
      return UserloginModel(nationalId: nationalId, password: password);
    }
    return null;
  }

  void dispose() {
    nationalIdController.dispose();
    passwordController.dispose();
  }

  bool _isValidNationalId(String nationalId) {
    return RegExp(r'^\d{14}$').hasMatch(nationalId);
  }

  bool _isValidPassword(String password) {
    return RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{6,}$',
    ).hasMatch(password);
  }

  onSavePassword(String s) {}

  onSaveNationalId(String s) {}
}
