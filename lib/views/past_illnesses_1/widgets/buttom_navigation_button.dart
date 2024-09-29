import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button.dart';
import 'package:tash5esy_app/views/past_illnesses_2/past_illnesses_screen_2.dart';

class BottomNavigationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PastIllnessesScreen2()),
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
