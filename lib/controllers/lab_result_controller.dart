import 'package:flutter/material.dart';
import 'package:tash5esy_app/models/lab_result_model.dart';

class LabResultsController extends ChangeNotifier {
  DateTime selectedDate = DateTime.now();
  List<TestResult> testResults = [];

  LabResultsController() {
    // Fetch initial test results
    _fetchTestResults();
  }

  void _fetchTestResults() {
    // Simulate fetching data
    testResults = [
      TestResult(
          testName: "CBC Test",
          time: "7:40 PM",
          date: "24",
          details: "Tap here to see full results"),
      TestResult(
          testName: "BMP Test",
          time: "5:00 PM",
          date: "24",
          details: "Tap here to see full results"),
      TestResult(
          testName: "Liver Function Test",
          time: "10:00 AM",
          date: "24",
          details: "Tap here to see full results"),
    ];
    notifyListeners();
  }

  void changeDate(DateTime newDate) {
    selectedDate = newDate;
    // Fetch new data for selected date (for simplicity, using static data)
    _fetchTestResults();
  }
}
