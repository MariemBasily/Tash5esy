import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/lab_result_controller.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/lab_results/widgets/calendar.dart';
import 'package:tash5esy_app/views/lab_results/widgets/result_list.dart';
import 'package:easy_localization/easy_localization.dart';

class LabResultsScreen extends StatefulWidget {
  @override
  _LabResultsScreenState createState() => _LabResultsScreenState();
}

class _LabResultsScreenState extends State<LabResultsScreen> {
  late LabResultsController controller;
  late VoidCallback controllerListener;

  @override
  void initState() {
    super.initState();
    // Initialize the controller
    controller = LabResultsController();
    // Define the listener function and update the widget
    controllerListener = () {
      setState(() {});
    };
    // Add the listener to the controller
    controller.addListener(controllerListener);
  }

  @override
  void dispose() {
    controller.removeListener(controllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'lab_results'.tr(),
          style: TextStyle(
            color: AppColors.secondary,
            fontFamily: "lato",
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        backgroundColor: AppColors.white,
        iconTheme: IconThemeData(color: AppColors.secondary),
      ),
      body: Column(
        children: [
          // Calendar Widget Section
          CalendarWidget(
            selectedDate: controller.selectedDate,
            onPreviousDay: () {
              controller.changeDate(
                controller.selectedDate.subtract(Duration(days: 1)),
              );
            },
            onNextDay: () {
              controller.changeDate(
                controller.selectedDate.add(Duration(days: 1)),
              );
            },
            onSelectDate: () {
              // Implement date picker functionality here if needed
            },
          ),
          // Results List Section
          controller.testResults.isNotEmpty
              ? ResultsList(testResults: controller.testResults)
              : Expanded(
                  child: Center(
                    child: Text(
                      'no_results_available'.tr(),
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.secondary,
                        fontFamily: "lato",
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
