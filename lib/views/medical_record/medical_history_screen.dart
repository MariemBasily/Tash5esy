import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button_2.dart';
import 'package:tash5esy_app/views/add_record/add_record_screen.dart';
import 'package:tash5esy_app/views/general_information/general_information_screen.dart';
import 'widgets/background_widget.dart';
import 'widgets/medical_form_widget.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class MedicalHistoryScreen extends StatefulWidget {
  @override
  _MedicalHistoryFormState createState() => _MedicalHistoryFormState();
}

class _MedicalHistoryFormState extends State<MedicalHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create A Health Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primary, // Use your custom color
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
           onPressed: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) =>
                    // AddRecordScreen(), // Adjust navigation as needed
          //     ),
          //   );
           },
        ),
      ),
      body: Stack(
        children: [
          BackgroundWidget(), // Background Widget with the oval shape
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  MedicalFormWidget(), // Your Medical form
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
