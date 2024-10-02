import 'package:flutter/material.dart';
import 'package:tash5esy_app/models/documents_model.dart';

class MedicalDocumentsController {
  // Retrieve recent documents
  List<MedicalDocument> getRecentDocuments() {
    return [
      MedicalDocument(title: 'Chest X-ray', date: '25.08.2024', type: 'X-Ray'),
      MedicalDocument(title: 'CBC Test', date: '15.08.2024', type: 'Lab'),
      MedicalDocument(title: 'BMP Test', date: '30.07.2024', type: 'Lab'),
    ];
  }

  // Navigate to Lab Results screen
  void goToLabResults(BuildContext context) {
    Navigator.pushNamed(context, '/labResults'); // Assuming route is defined in main.dart
  }

  // Navigate to X-Ray Results screen
  void goToXRayResults(BuildContext context) {
    Navigator.pushNamed(context, '/xrayResults'); // Assuming route is defined in main.dart
  }
}
