import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/documents/documents_screen.dart';
import 'package:tash5esy_app/views/medical_record/medical_history_screen.dart';
import 'package:tash5esy_app/views/visits/visits_screen.dart';

class HomeController {
  void navigateToMedicalHistory(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MedicalHistoryScreen()));
  }

  void navigateToVisits(BuildContext context){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => VisitsScreen()));
  }
  void navigateToDocuments(BuildContext context){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MedicalDocumentsScreen()));
  }
}
