import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button.dart';
import 'package:tash5esy_app/views/general_information/general_information_screen.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GeneralInformationScreen()),
          );
        },
        label: 'Next',
        text: '',
        child: const Text(
          'Next',
          style: TextStyle(fontSize: 18, color: Colors.white, fontWeight:FontWeight.bold),
        ),
      ),
    );
  }
}