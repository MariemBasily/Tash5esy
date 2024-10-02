import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/reset_password/reset_password_screen.dart';

// AppBar Widget
class CustomAppBarr extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  final String title;
  CustomAppBarr({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.secondary),
          onPressed: () {
            // Handle back navigation
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Code Sent To Your SMS',
          style: TextStyle(
              color: AppColors.secondary, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
    );
  }
}

// Code Verification Widget
class CodeVerificationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Enter The 6-digit Number That We Send To\n+20154218457',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey2,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Enter the code',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        // Verification Boxes (assuming they are 6)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(6, (index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  '5', // This should be dynamically updated based on user input
                  style: TextStyle(
                    color: AppColors.grey2,
                    fontSize: 22,
                  ),
                ),
              ),
            );
          }),
        ),
        SizedBox(height: 20),
        RichText(
          text: TextSpan(
            text: "Haven't got the code yet? ",
            style: TextStyle(color: AppColors.grey2),
            children: <TextSpan>[
              TextSpan(
                text: 'Resend code',
                style: TextStyle(color: AppColors.secondary),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Button Navbar Widget
class VerifyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5, // 50% of the screen width
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ResetPasswordScreen()));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondary, // Background color
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          'Verify Code',
          style: TextStyle(color: AppColors.grey, fontSize: 18),
        ),
      ),
    );
  }
}
