import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/medical_record/widgets/custom_app_bar.dart';
import 'package:tash5esy_app/views/medical_record/widgets/background_widget.dart';
import 'package:tash5esy_app/views/past_illnesses_1/past_illnesses_screen_1.dart';
import 'package:tash5esy_app/views/past_illnesses_1/widgets/buttom_navigation_button.dart';
import 'widgets/form_widget.dart';

class PastIllnessesScreen2 extends StatefulWidget {
  @override
  _PastIllnessesFormState createState() => _PastIllnessesFormState();
}

class _PastIllnessesFormState extends State<PastIllnessesScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Past Illnesses',onPressed: () { Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PastIllnessesScreen1()),
          ); },), // Custom AppBar
      body: Stack(
        children: [
          BackgroundWidget(), // Background Widget with the oval shape
          PastIllnessesWidget2(), 
        ],
      ),
      bottomNavigationBar: BottomNavigationButton(), 
    );
  }
}