import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button_2.dart';
import 'widgets/header_image.dart';
import 'widgets/welcome_text.dart';
import 'widgets/description_text.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String data = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const HeaderImage(),
              const SizedBox(height: 2),
              const WelcomeText(),
              const SizedBox(height: 30),
              const DescriptionText(),
              const Spacer(),
              CustomButton2(
                label: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
