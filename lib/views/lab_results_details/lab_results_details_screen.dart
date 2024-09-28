import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/test_result_controller.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class LabResultsDetails extends StatelessWidget {
  final LabResultsDetailsController controller;

  LabResultsDetails({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          controller.testResult.testName,
          style: TextStyle(
            color: AppColors.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 26,
            fontFamily: "SourceSans3",
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PDF Card
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.asset("assets/images/pdf.png"),
                  SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      controller.testResult.testName,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Download Button aligned to the right below the card
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: controller.testResult.pdfFilePath != null
                      ? controller.downloadPDF
                      : () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('No PDF available for download.'),
                            ),
                          );
                        },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.primary, width: 2),
                    ),
                    child: Icon(
                      Icons.download,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            // Notes Section
            Text(
              'Notes',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
                fontFamily: "SourceSans3",
              ),
            ),
            SizedBox(height: 10),
            // Display notes
            Expanded(
              child: ListView.builder(
                itemCount: 2, // Example: Display two note containers
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.secondary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. ',
                        style: TextStyle(fontSize: 16, color: AppColors.primary),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
