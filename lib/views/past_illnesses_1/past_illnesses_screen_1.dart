import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/general_information/general_information_screen.dart';
import 'package:tash5esy_app/views/medical_record/widgets/custom_app_bar.dart';
import 'package:tash5esy_app/views/medical_record/widgets/background_widget.dart';
import 'package:tash5esy_app/views/past_illnesses_1/widgets/buttom_navigation_button.dart';
import 'widgets/form_widget.dart';

class PastIllnessesScreen1 extends StatefulWidget {
  @override
  _PastIllnessesFormState createState() => _PastIllnessesFormState();
}

class _PastIllnessesFormState extends State<PastIllnessesScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Past Illnesses',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GeneralInformationScreen()),
          );
        },
      ), // Custom AppBar
      body: Stack(
        children: [
          BackgroundWidget(), // Background Widget with the oval shape
          PastIllnessesWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationButton(),
    );
  }
}
