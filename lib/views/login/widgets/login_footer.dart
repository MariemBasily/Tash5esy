import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/login/widgets/login_button.dart';
import 'package:tash5esy_app/views/login/widgets/signup_prompt.dart';
import 'package:tash5esy_app/controllers/login_controller.dart';

class LoginFooter extends StatelessWidget {
  final LoginController controller;

  const LoginFooter({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginButton(controller: controller), // Moved login button logic here
        const SizedBox(height: 5),
        SignupPrompt(), // Moved signup prompt logic here
      ],
    );
  }
}
