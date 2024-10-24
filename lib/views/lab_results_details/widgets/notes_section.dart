import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class NotesSectionWidget extends StatelessWidget {
  final String notes;

  NotesSectionWidget({required this.notes});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(16),
      child: Text(
        notes,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.grey,
          fontFamily: "lato",
        ),
      ),
    );
  }
}
