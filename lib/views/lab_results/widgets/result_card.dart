import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/test_result_controller.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/models/lab_result_model.dart';
import 'package:tash5esy_app/views/lab_results_details/lab_results_details_screen.dart';
import 'package:easy_localization/easy_localization.dart';

class ResultCard extends StatelessWidget {
  final TestResult testResult;

  const ResultCard({required this.testResult});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                testResult.time,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "lato",
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          testResult.testName,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                            fontFamily: "lato",
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'tap_here_to_see_full_results'.tr(),
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.grey,
                            fontFamily: "lato",
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LabResultsDetails(
                            controller: LabResultsDetailsController(testResult),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 40,
                      height: 65,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
