import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/account_infornation/account_information_screen.dart';
import 'package:tash5esy_app/views/settings/widgets/custom_text.dart';
import 'package:tash5esy_app/views/terms&conditions/terms_conditions_screen.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            ListTile(
              leading: Image.asset('assets\icons\languages_icon.png'),
              title: CustomText(
                text: 'Language',
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.secondary,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset('assets\icons\notifications_icon.png'),
              title: CustomText(
                text: 'Notification',
              ),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {
                  // Handle switch toggle
                },
              ),
            ),
            ListTile(
              leading: Image.asset('assets\icons\location_icon.png'),
              title: CustomText(
                text: 'Location',
              ),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {
                  // Handle switch toggle
                },
              ),
            ),
            SizedBox(height: 20),
            CustomText(
              text: 'Account & Security',
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Image.asset('assets\icons\profile_icon.png'),
              title: CustomText(
                text: 'Account Information',
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.secondary,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountInformationScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Image.asset('assets\icons\terms_icon.png'),
              title: CustomText(
                text: 'Terms & Conditaions',
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.secondary,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TermsConditionsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Image.asset('assets\images\about us.png'),
              title: CustomText(
                text: 'About Us',
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.secondary,
              ),
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
