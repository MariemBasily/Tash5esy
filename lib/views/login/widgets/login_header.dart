import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/login/widgets/logo_widget.dart';
import 'package:tash5esy_app/views/login/widgets/header_text.dart';

class LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoWidget(),
        SignInHeaderWidget(),
      ],
    );
  }
}
