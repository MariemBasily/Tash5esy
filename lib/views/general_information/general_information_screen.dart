import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/add_record/add_record_screen.dart';
import 'package:tash5esy_app/views/general_information/widgets/butttom_navigation_button.dart';
import 'package:tash5esy_app/views/general_information/widgets/form_widget.dart';
import 'package:tash5esy_app/views/medical_record/medical_history_screen.dart';

class GeneralInformationScreen extends StatelessWidget {
  const GeneralInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Header
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builder) => AddRecordScreen(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.white,
                        ),
                      ),
                      Text(
                        'Create A Health Profile',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Form Widget
                  const FormWidget(),

                  // Bottom Navigation Button
                  BottomNavigationButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => MedicalHistoryScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
