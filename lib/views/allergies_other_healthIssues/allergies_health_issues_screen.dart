import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/allergies_other_healthIssues/widgets/form.dart';
import 'package:tash5esy_app/views/allergies_other_healthIssues/widgets/msg_widget.dart';
import 'package:tash5esy_app/views/past_illnesses_2/past_illnesses_screen_2.dart';
import 'package:tash5esy_app/views/past_illnesses_2/widgets/BottomNavigationButton.dart';

class AllergiesHealthIssuesScreen extends StatelessWidget {
  const AllergiesHealthIssuesScreen({super.key});

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
                              builder: (builder) => PastIllnessesScreen2(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.white,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Allergies and other health issues',
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
                  const AllergyForm(),

                  // Bottom Navigation Button
                  BottomNavigationButton2(
                     onPressed: () {
          showSuccessDialog(context);
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

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return MsgWidget();
    },
  );
}
