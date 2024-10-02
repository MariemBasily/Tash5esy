import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/add_record/add_record_screen.dart';
import 'package:tash5esy_app/views/medical_record/widgets/buttom_navigation_button.dart';
import 'package:tash5esy_app/views/medical_record/widgets/custom_app_bar.dart';
import 'widgets/background_widget.dart';
import 'widgets/medical_form_widget.dart';

class MedicalHistoryScreen extends StatefulWidget {
  @override
  _MedicalHistoryFormState createState() => _MedicalHistoryFormState();
}

class _MedicalHistoryFormState extends State<MedicalHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Create A Health Profile',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddRecordScreen()),
          );
        },
      ), // Custom AppBar
      body: Stack(
        children: [
          BackgroundWidget(), // Background Widget with the oval shape
          MedicalFormWidget(), // Form Widget
        ],
      ),

      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
