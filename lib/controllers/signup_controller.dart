import 'package:flutter/material.dart';

class UserController {
  final formKey = GlobalKey<FormState>();

  String fullName = '';
  String email = '';
  String nationalId = '';
  String phoneNumber = '';
  String password = '';

  set confirmPassword(String confirmPassword) {}

  bool validateForm() {
    return formKey.currentState?.validate() ?? false;
  }

  void saveForm() {
    if (validateForm()) {
      formKey.currentState?.save();
      print("Form is valid and saved");
    } else {
      print("Form is not valid");
    }
  }
}
