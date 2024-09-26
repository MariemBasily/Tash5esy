import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/documents_controller.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/models/documents_model.dart';
import 'package:tash5esy_app/views/documentation/widgets/recent_documents_list.dart';
import 'package:tash5esy_app/views/documentation/widgets/top_buttons.dart';

class MedicalDocumentsScreen extends StatefulWidget {
  @override
  _MedicalDocumentsScreenState createState() => _MedicalDocumentsScreenState();
}

class _MedicalDocumentsScreenState extends State<MedicalDocumentsScreen> {
  final MedicalDocumentsController _controller = MedicalDocumentsController();

  @override
  Widget build(BuildContext context) {
    List<MedicalDocument> recentDocuments = _controller.getRecentDocuments();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Center(
          child: Text(
            "Medical Documents".tr(),
            style: TextStyle(
                color: AppColors.secondary,
                fontWeight: FontWeight.bold,
                fontFamily: "SourceSans3",
                fontSize: 26),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.secondary),
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
            TopButtons(), // Top section with Lab Results & X-Ray Results buttons
            SizedBox(height: 20),
            Divider(
              color: AppColors.grey, 
              thickness: 1.5, 
            ),
            SizedBox(height: 10),
            Text(
              'Recently'.tr(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
                fontFamily: "SourceSans3",
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: RecentDocumentsList(recentDocuments: recentDocuments), // List of documents
            ),
          ],
        ),
      ),
    );
  }
}
