import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/models/lab_result_model.dart';

class PDFCardWidget extends StatelessWidget {
  final TestResult testResult;

  PDFCardWidget({required this.testResult});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.picture_as_pdf,
              size: 50,
              color: AppColors.white,
            ),
          ),
          Text(
            testResult.testName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              fontFamily: "lato",
            ),
          ),
        ],
      ),
    );
  }
}
