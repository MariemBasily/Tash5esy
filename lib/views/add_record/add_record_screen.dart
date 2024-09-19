import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/components/custom_button.dart';
import 'package:tash5esy_app/core/components/custom_button_2.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/add_record/widgets/widget.dart';
import 'package:tash5esy_app/views/medical_record/medical_history_screen.dart';


class AddRecordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    appBar: CustomAppBar(title: 'Add Record'),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/add medical history.png",
             width: 117, 
             height: 152,
            ),
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
       CustomButton
    // bottomNavigationBar: Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     style: ElevatedButton.styleFrom(
    //        backgroundColor: AppColors.secondary,
    //     child: Text('Add Records', style: TextStyle(fontSize: 18 ,color: Colors.white,) ),
    //     onPressed: () {
    //     Navigator.push(
    //     context, MaterialPageRoute(builder: (builder) => MedicalHistoryScreen()));
    //       },
    //     ),
    //   ),

        
        // child: CustomButton(
        // text: 'Add Records',
        //   onPressed: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (builder) => MedicalHistoryScreen()));
        //   }, label: 'Add Records', style:TextStyle(fontSize: 20 ,color:Colors.white), 
        //   Text('Add Records', style: TextStyle(fontSize: 18 ,color: Colors.white) ),
        // ),
     
    );
  }
}