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

    // Perform validation
    if (nationalId.isEmpty) {
      nationalIdError = "National ID cannot be empty";
    }
    if (password.isEmpty) {
      passwordError = "Password cannot be empty";
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
}
