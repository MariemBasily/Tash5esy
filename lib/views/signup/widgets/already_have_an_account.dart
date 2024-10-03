import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/login/login_screen.dart'; 
import 'package:tash5esy_app/core/style/colors.dart';

class AlreadyHaveAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account? ".tr(), style: TextStyle(color: AppColors.grey, fontSize: 16,fontFamily: "lato"),), 
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      LoginScreen()), 
            );
          },
          child: Text("Log in".tr(), style: TextStyle(color: AppColors.secondary, fontSize: 16,fontFamily: "lato"),), 
        ),
      ],
    );
  }
}
