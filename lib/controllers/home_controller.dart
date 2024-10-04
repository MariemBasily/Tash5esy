import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/documents/documents_screen.dart';
//import 'package:tash5esy_app/views/medical_record/medical_history_screen.dart';
import 'package:tash5esy_app/views/add_record/add_record_screen.dart';
import 'package:tash5esy_app/views/Appointments/appointments_screen.dart';

class HomeController {
  void navigateToMedicalHistory(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => AddRecordScreen()));
  }

  void navigateToAppointments(BuildContext context){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => AppointmentsScreen()));
  }
  void navigateToDocuments(BuildContext context){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MedicalDocumentsScreen()));
  }
}
