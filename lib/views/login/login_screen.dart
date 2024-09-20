import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tash5esy_app/controllers/login_controller.dart';
import 'package:tash5esy_app/views/login/widgets/login_form.dart';
import 'package:tash5esy_app/views/login/widgets/logo_widget.dart';
import 'package:tash5esy_app/views/login/widgets/remember_me.dart';
import 'package:tash5esy_app/views/login/widgets/header_text.dart';
import 'package:tash5esy_app/core/components/custom_button.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class LoginScreen extends StatelessWidget {
  final LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50),
                LogoWidget(),
                SignInHeaderWidget(),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LoginForm(controller: controller),
                    RememberMeWidget(),
                  ],
                ),
                const SizedBox(height: 100),
                CustomButton(
                  onPressed: () {
                    final loginData = controller.login();
                    if (loginData != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Login successful!").tr()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Please fill in all fields.").tr(),
                        ),
                      );
                    }
                  },
                  label: 'Login'.tr(),
                ),
                const SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'/forgot_password'); 
                  },
                  child: Text(
                    'Forget Password?'.tr(),
                    style: TextStyle(color: AppColors.secondary),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t Have An Account? '.tr(),
                      style: TextStyle(color: AppColors.grey2),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup'); 
                      },
                      child: Text(
                        'Sign Up'.tr(),
                        style: TextStyle(
                          color: AppColors.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
