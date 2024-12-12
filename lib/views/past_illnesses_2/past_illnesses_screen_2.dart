import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/allergies_other_healthIssues/allergies_health_issues_screen.dart';
import 'package:tash5esy_app/views/past_illnesses_1/past_illnesses_screen_1.dart';
import 'package:tash5esy_app/views/past_illnesses_2/widgets/BottomNavigationButton.dart';
import 'package:tash5esy_app/views/past_illnesses_2/widgets/form_widget.dart';

class PastIllnessesScreen2 extends StatelessWidget {
  const PastIllnessesScreen2({Key? key}) : super(key: key);

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
                              builder: (builder) => PastIllnessesScreen1(),
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
                        'Past Illnesses 2',
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
                  const past_illnesses2(),

                  // Bottom Navigation Button
                  BottomNavigationButton2(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => AllergiesHealthIssuesScreen(),
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
