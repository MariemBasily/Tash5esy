import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/home_screen/home_screen.dart';
import 'package:tash5esy_app/views/visit_details/visits_details_screen.dart';
import 'package:tash5esy_app/views/visits/visits_screen.dart';

class VisitButtonController {
  void onClick(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VisitsDetailsScreen()));
  }
  void onPressed(BuildContext context){
     Navigator.pop(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
  void onPress(BuildContext context){
     Navigator.pop(
        context, MaterialPageRoute(builder: (context) => VisitsScreen()));   
  }
}
