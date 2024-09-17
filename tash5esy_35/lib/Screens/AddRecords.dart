import 'package:flutter/material.dart';
import 'package:tash5esy_35/Screens/MedicalHistory.dart';


class AddRecordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color(0xFF034078),
        toolbarHeight: 85,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),
        title: Text('Add Record', style: TextStyle(color: Colors.white,fontFamily: "Source Code Pro",fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/imeges/add medical history.png",
             width: 117, 
             height: 152,
            ),
            
            // Icon(
            //   Icons.assignment,
            //   size: 100,
            //   color: Color(0xFF034078),
            // ),
            SizedBox(height: 20),
            Text(
              'You Have Not\nAdded Any Medical\nRecords Yet',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF034078),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF0A6FB7),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => MedicalHistoryForm()));
          },
          child: Text('Add Records', style: TextStyle(fontSize: 18 ,color: Colors.white) ),
        ),
      ),
    );
  }
}