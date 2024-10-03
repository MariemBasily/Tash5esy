import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/xray_result_controller.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/lab_results/widgets/calendar.dart';
import 'package:tash5esy_app/views/x-ray_results/widgets/result_list.dart';

class XrayResultsScreen extends StatefulWidget {
  @override
  _XrayResultsScreenState createState() => _XrayResultsScreenState();
}

class _XrayResultsScreenState extends State<XrayResultsScreen> {
  late XrayResultController controller;
  late VoidCallback controllerListener;

  @override
  void initState() {
    super.initState();
    controller = XrayResultController(); // Initialize the controller
    controllerListener = () {
      setState(() {}); // Update the widget when controller data changes
    };
    controller.addListener(controllerListener); // Add listener to controller
  }

  @override
  void dispose() {
    controller.removeListener(controllerListener); // Clean up listener
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'X-Ray Results',
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
          controller.xrayResults.isNotEmpty
              ?  xrayResultsList(xrayResults: controller.xrayResults)
              : Expanded(
                  child: Center(
                    child: Text(
                      'No Results Available',
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
