import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.asset(
            'assets\icons\two step verification_icon.png',
          ),
          title: Text(
            "Two Step Verification",
            style: TextStyle(
              color: AppColors.secondary,
            ),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets\icons\change number_icon.png',
          ),
          title: Text(
            "Change Number",
            style: TextStyle(
              color: AppColors.secondary,
            ),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets\icons\terms_icon.png',
          ),
          title: Text(
            "Request Account Info",
            style: TextStyle(
              color: AppColors.secondary,
            ),
          ),
        ),
        ListTile(
          leading: Image.asset(
            'assets\icons\delete accound_icon.png',
          ),
          title: Text(
            "Delete Account",
            style: TextStyle(
              color: AppColors.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
