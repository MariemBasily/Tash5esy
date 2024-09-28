import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tash5esy_app/controllers/login_controller.dart';

class LoginButton extends StatelessWidget {
  final LoginController controller;

  const LoginButton({required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      label: 'Login'.tr(),
      onPressed: () => _handleLogin(context),
    );
  }

  // Only calls controller logic, UI should not handle data directly
  void _handleLogin(BuildContext context) {
    final loginData = controller.login();
    if (loginData != null) {
      Navigator.pushNamed(context, '/controller_screen');
      ScaffoldMessenger.of(context).showSnackBar(_buildSuccessSnackBar());
    } else {
      _showErrorDialog(context);
    }
  }

  // Success SnackBar widget
  SnackBar _buildSuccessSnackBar() {
    return SnackBar(
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
    );
  }

  // Error dialog based on controller errors
  void _showErrorDialog(BuildContext context) {
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
}
