import 'package:flutter/material.dart';
import 'package:tash5esy_app/models/lab_result_model.dart';
import 'package:tash5esy_app/views/lab_results/widgets/result_card.dart';

class ResultsList extends StatelessWidget {
  final List<TestResult> testResults; // Accept TestResult objects

  const ResultsList({required this.testResults}); // Required parameter

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: testResults.length,
        itemBuilder: (context, index) {
          final result = testResults[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ResultCard(testResult: result), // Pass testResult correctly
          );
        },
      ),
    );
  }
}
