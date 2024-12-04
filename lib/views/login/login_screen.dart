import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/login_controller.dart';
import 'package:tash5esy_app/views/login/widgets/login_form.dart';
import 'package:tash5esy_app/views/login/widgets/logo_widget.dart';
import 'package:tash5esy_app/views/login/widgets/remember_me.dart';
import 'package:tash5esy_app/views/login/widgets/header_text.dart';
import 'package:tash5esy_app/views/login/widgets/login_footer.dart';

class LoginScreen extends StatelessWidget {
  final LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50),
                LogoWidget(), // Displays logo
                SignInHeaderWidget(), // Displays header text
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LoginForm(controller: controller), // Form handling
                    RememberMeWidget(),
                  ],
                ),
                const SizedBox(height: 50),
                LoginFooter(controller: controller),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
