import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/models/documents_model.dart';

class RecentDocumentsList extends StatelessWidget {
  final List<MedicalDocument> recentDocuments;

  RecentDocumentsList({required this.recentDocuments});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recentDocuments.length,
      itemBuilder: (context, index) {
        return _buildDocumentItem(recentDocuments[index]);
      },
    );
  }

  Widget _buildDocumentItem(MedicalDocument document) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: AppColors.secondary),        
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: AppColors.white,
      child: ListTile(
        leading: Image.asset("assets/images/file.png", width: 50,height:50),
        title: Text(
          document.title,
          style: TextStyle(color: AppColors.secondary,
          fontWeight: FontWeight.bold,
          fontFamily: "lato",
          fontSize: 20
          ),
        ),
        subtitle: Text(
          document.date,
          style: TextStyle(color: AppColors.grey2,
          fontFamily: "lato",
          fontSize: 16,
          fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(Icons.more_vert, color: AppColors.grey),
        onTap: () {
          // Handle document tap
          },
      ),
    );
  }
}
