import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class LabResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lab Results',
          style: TextStyle(
            color: AppColors.secondary,
            fontFamily: "SourceSans3",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.white,
        iconTheme: IconThemeData(color: AppColors.secondary),
      ),
      body: Center(
        child: Text(
          'Lab Results Content Here',
          style: TextStyle(fontSize: 24, color: AppColors.primary),
        ),
      ),
    );
  }
}
