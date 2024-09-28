import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/controllers/documents_controller.dart';

class TopButtons extends StatelessWidget {
  final MedicalDocumentsController controller = MedicalDocumentsController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButton(
          context,
          'Lab Results',
          '3 files',
          Icons.biotech,
          Icons.file_copy,
          () => controller.goToLabResults(context), // Navigate to Lab Results
        ),
        _buildButton(
          context,
          'X-Ray Results',
          '4 files',
          Icons.medical_services,
          Icons.file_copy,
          () =>
              controller.goToXRayResults(context), // Navigate to X-Ray Results
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context, String title, String subtitle,
      IconData icon, IconData fileIcon, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.secondary),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Icon(icon, size: 40, color: AppColors.secondary),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondary,
                  fontFamily: "SourceSans3",
                ),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(fileIcon, size: 16, color: AppColors.grey2),
                  SizedBox(width: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                        color: AppColors.grey2,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSans3"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
