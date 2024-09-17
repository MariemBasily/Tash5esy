import 'package:flutter/material.dart';
import 'package:tash5esy_35/Screens/MH_pastIllnesses.dart';
import 'package:tash5esy_35/Screens/MedicalHistory.dart';
import 'package:tash5esy_35/controller/OvalBottomClipper.dart';

class generalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Continue', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xFF034078), 
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
                   onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => (MedicalHistoryForm())));
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          ClipPath(
            clipper: OvalBottomClipper(),
            child: Container(
              height: 300, 
              color: Color(0xFF034078),
            ),
          ),
          SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Center(
              child: Container(
                margin: EdgeInsets.only(top: 60), 
                padding: EdgeInsets.fromLTRB(100,20,20,20),
                width: 290,
                height:500 ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(0, 5), 
                    ),
                   
                  ],
                ),
            ),
          ),
            
        
            ]
        ),
     ),
        ]
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
                context, MaterialPageRoute(builder: (builder) => MhPastillnesses()));
          },
          child: Text('Next', style: TextStyle(fontSize: 18 ,color: Colors.white) ),
        ),
      ),



    );
}
}

         