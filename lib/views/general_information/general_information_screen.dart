import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/medical_record/medical_history_screen.dart';
import 'package:tash5esy_app/views/medical_record/widgets/custom_app_bar.dart';
import 'package:tash5esy_app/views/medical_record/widgets/background_widget.dart';
import 'package:tash5esy_app/views/past_illnesses_1/widgets/buttom_navigation_button.dart';
import 'widgets/form_widget.dart';

class GeneralInformationScreen extends StatefulWidget {
  @override
  _GeneralInformationFormState createState() => _GeneralInformationFormState();
}

class _GeneralInformationFormState extends State<GeneralInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Continue',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MedicalHistoryScreen()),
          );
        },
      ), // Custom AppBar
      body: Stack(
        children: [
          BackgroundWidget(), // Background Widget with the oval shape
          FormWidget(),
          // Form Widget
        ],
      ),
      bottomNavigationBar: BottomNavigationButton(),
    );
  }
}
