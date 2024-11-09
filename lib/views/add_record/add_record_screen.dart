import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button.dart';
import 'package:tash5esy_app/views/add_record/widgets/widget.dart';
import 'package:tash5esy_app/views/medical_record/medical_history_screen.dart';

class AddRecordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Add Record'.tr(),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/add_medical_history.png",
              width: 117,
              height: 152,
            ),
            const SizedBox(height: 20),
            const Text(
              'You Have Not\nAdded Any Medical\nRecords Yet',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF034078),
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Lato",
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
                builder: (context) => MedicalHistoryScreen(),
              ),
            );
          },
          label: 'Add Records',
          text: '',
          child: Text(''),
        ),
      ),
    );
  }
}
