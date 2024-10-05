import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/edit_profile/edit_profile_screen.dart';
import 'package:tash5esy_app/views/privacy_policy/privacy_policy_screen.dart';
import 'package:tash5esy_app/views/profile/widgets/profile_screen_text.dart';
import 'package:tash5esy_app/views/settings/settings_screen.dart';

class ProfileScreenListTile extends StatelessWidget {
  const ProfileScreenListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset('assets\icons\profile_icon.png'),
          title: ProfileScreenText(text: 'Edit Profile'),
          trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfileScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.blue,
              )),
        ),
        ListTile(
          leading: Image.asset('assets\icons\join your family_icon.png'),
          title: ProfileScreenText(text: 'Join Your Family'),
          trailing: TextButton(
            child: Text(
              'SOON',
              style: TextStyle(
                  color: AppColors.green, fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
        ),
        ListTile(
          leading: Image.asset('assets\icons\settings_icon.png'),
          title: ProfileScreenText(text: 'Settings'),
          trailing: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.blue,
            ),
          ),
        ),
        ListTile(
          leading: Image.asset('aassets\icons\privacy policy_icon.png'),
          title: ProfileScreenText(text: 'Privacy Policy'),
          trailing: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrivacyPolicyScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.blue,
            ),
          ),
        ),
        ListTile(
          leading: Image.asset('assets\icons\help_icon.png'),
          title: ProfileScreenText(text: 'Help'),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.blue,
            ),
          ),
        ),
        ListTile(
          leading: Image.asset('assets\icons\invite your friends_icon.png'),
          title: ProfileScreenText(text: 'Invite Your Friends'),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.blue,
            ),
          ),
        ),
        ListTile(
          leading: Image.asset('assets\icons\logout_icon.png'),
          title: ProfileScreenText(text: 'Logout'),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
