import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/add_record/widgets/widget.dart';
import 'package:tash5esy_app/views/general_information/general_information_screen.dart';
import 'package:tash5esy_app/views/medical_record/medical_history_screen.dart';

class AddRecordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Add Record'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/add medical history.png",
              width: 117,
              height: 152,
            ),
            const SizedBox(height: 20),
            Text(
              'You Have Not\nAdded Any Medical\nRecords Yet',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "lato",
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (builder) => GeneralInformationScreen(),
              ),
            );
          },
          label: 'Add Records', text: '', child: Text(''), 
        ),
      ),
    );
  }
}
