import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/profile/widgets/profile_screen_circleAvatar.dart';
import 'package:tash5esy_app/views/profile/widgets/profile_screen_listtile.dart';
import 'package:tash5esy_app/views/profile/widgets/profile_screen_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('My Profile'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20),
            ProfileScreenCircleavatar(),
            SizedBox(height: 10),
            ProfileScreenText(text: "Sarah Doe"),
            SizedBox(height: 20),
            ProfileScreenListTile(),
          ],
        ),
      ),
    );
  }
}
