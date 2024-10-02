

import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/past_illnesses_1/past_illnesses_screen_1.dart';

class BottomNavigationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PastIllnessesScreen1()),
          );
        },
        label: 'Next',
        text: '',
        child: Text(
          'Next',
          style: TextStyle(fontSize: 18, color: AppColors.grey, fontWeight:FontWeight.bold),
        ),
      ),
    );
  }
}
