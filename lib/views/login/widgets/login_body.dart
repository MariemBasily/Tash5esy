import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/login_controller.dart';
import 'package:tash5esy_app/views/login/widgets/login_form.dart';
import 'package:tash5esy_app/views/login/widgets/remember_me.dart';

class LoginBody extends StatelessWidget {
  final LoginController controller;

  const LoginBody({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoginForm(controller: controller),
        RememberMeWidget(),
      ],
    );
  }
}
