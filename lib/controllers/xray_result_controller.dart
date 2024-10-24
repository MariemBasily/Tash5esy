import 'package:flutter/material.dart';
import 'package:tash5esy_app/models/xray_result_model.dart';

class XrayResultController extends ChangeNotifier {
  DateTime selectedDate = DateTime.now();
  List<XrayResult> xrayResults = []; // Initialize as an empty list
  XrayResultController() {_fetchTestResults(); // Fetch results when controller is created
  }

  void _fetchTestResults() {
    // Simulate fetching data
    xrayResults = [
      XrayResult(
        testName: "Chest X-ray",
        time: "7:40 PM",
        date: "24",
        details: "Tap here to see full results",
      ),
      XrayResult(
        testName: "Abdominal X-ray",
        time: "5:00 PM",
        date: "24",
        details: "Tap here to see full results",
      ),
      XrayResult(
        testName: "Hand X-ray",
        time: "10:00 AM",
        date: "24",
        details: "Tap here to see full results",
      ),
    ];
    notifyListeners(); // Notify listeners that the data has changed
  }

  void changeDate(DateTime newDate) {
    selectedDate = newDate;
    _fetchTestResults(); // Fetch new test results for the selected date
  }
}
