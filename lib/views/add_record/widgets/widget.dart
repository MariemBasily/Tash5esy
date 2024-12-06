import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/home_screen/home_screen.dart';
//import 'package:tash5esy_app/core/style/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title, required bool centerTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,

        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(4),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: AppColors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => HomeScreen(),
                  ),
                );
              },
            ),
          ),
        ),

        title: Text(
          'Add Records',
          style: TextStyle(
           color: AppColors.white, // Text color of title
            fontSize: 25,
            fontFamily: "lato",
          ),
        ),
        centerTitle: true, // Centers the title
        iconTheme: IconThemeData(
          color: AppColors.white, // Icon color
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/add medical history.png",
              width: 117,
              height: 152,
            ),
            const SizedBox(height: 20),
            Text(
              'You Have Not\nAdded Any Medical\nRecords Yet',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "lato",
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  widget({required Center child}) {}
}
