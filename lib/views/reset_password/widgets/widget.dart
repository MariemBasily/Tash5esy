import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/reset_password/widgets/pop_widget.dart';

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
          onPressed: () {},
        ),
        title: Text(
          'Set a New Password',
          style: TextStyle(
              color: AppColors.secondary, fontWeight: FontWeight.bold,fontFamily: "lato"),
        ),
        centerTitle: true,
      ),
    );
  }
}

// Code Verification Widget
class Newpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Create a new password. Ensure it differs from previous ones for security',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey2,
            fontSize: 16,
            fontFamily: "lato",
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 50.0), // Padding added from the top
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Phone Number Label
              Text(
                'New Password',
                style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "lato"),
              ),
              const SizedBox(height: 8),
              // Phone Number Input Field
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.grey,
                  hintText: '**********',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontFamily: "lato",
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16),
              // National ID Label
              Text(
                'Confirm New Password',
                style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "lato"),
              ),
              SizedBox(height: 8),
              // National ID Input Field
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.grey,
                  hintText: '*********',
                  hintStyle: TextStyle(
                    color: AppColors.grey2,
                    fontFamily: "lato",
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
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
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondary, // Background color
          padding: EdgeInsets.symmetric(vertical: 17),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        onPressed: () {
          showSuccessDialog(context);
        },
        child: Text(
          'Update Password',
          style: TextStyle(color: AppColors.grey, fontSize: 18,fontFamily: "lato"),
        ),
      ),
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return PopupWidget();
    },
  );
}
