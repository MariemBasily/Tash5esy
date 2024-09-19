import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button_2.dart';
import 'widgets/header_image.dart';
import 'widgets/welcome_text.dart';
import 'widgets/description_text.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40), 
            const HeaderImage(), 
            const SizedBox(height:2), 
            const WelcomeText(),
            const SizedBox(height:30), 
            const DescriptionText(),
            const SizedBox(height:100), 
            CustomButton2(
              label: 'Get Started',
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
