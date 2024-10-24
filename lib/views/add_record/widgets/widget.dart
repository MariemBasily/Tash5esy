import 'package:flutter/material.dart';
//import 'package:tash5esy_app/core/style/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title; 

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(

      backgroundColor: Color(0xFF034078), 
      // Background color of AppBar
    leading: Padding(
            padding: const EdgeInsets.all(8.0), // Adjust padding for the white square
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // White square background
                shape: BoxShape.rectangle, // Rectangle shape
                borderRadius: BorderRadius.circular(8), // Rounded corners (optional)
              ),
              padding: EdgeInsets.all(4), // Padding inside the white square
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios), // Use any icon
                color: Color(0xFF034078), // Icon color
                onPressed: () {
                  // Action when the button is pressed (usually back navigation)
                },
              ),
            ),
    ),
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back_ios), 
      //   onPressed: () {
      //   },
      // ),
      title: Text(
        'Add Records',
        style: TextStyle(
          color: Colors.white, // Text color of title
          fontSize: 25,
          fontFamily: "lato",
        ),
      ),
      centerTitle: true, // Centers the title
      iconTheme: IconThemeData(
        color: Colors.white, // Icon color
      ),
    ),
  );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
  widget({required Center child}) {}
}
