import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title; 

  CustomAppBar({required this.title});
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Color(0xFF034078), // Background color of AppBar
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios), // Back arrow icon
        onPressed: () {
          // Action when the back icon is pressed
        },
      ),
      title: Text(
        'Add Records',
        style: TextStyle(
          color: Colors.white, // Text color of title
          fontSize: 25,
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
