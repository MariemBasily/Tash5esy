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
                        SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.check_circle, color: Colors.white),
                              const SizedBox(width: 10),
                              Text("Login successful!".tr()),
                            ],
                          ),
                          backgroundColor: Colors.green,
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          margin: EdgeInsets.all(16),
                        ),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Row(
                              children: [
                                Icon(Icons.error, color: Colors.red),
                                const SizedBox(width: 10),
                                Text("Error".tr()),
                              ],
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (controller.nationalIdError != null)
                                  Text(controller.nationalIdError!,
                                      style: TextStyle(color: Colors.red)),
                                if (controller.passwordError != null)
                                  Text(controller.passwordError!,
                                      style: TextStyle(color: Colors.red)),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK".tr()),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  label: 'Login'.tr(),
                ),
                const SizedBox(height: 5),
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
