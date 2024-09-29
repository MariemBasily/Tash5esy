import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

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
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.secondary),
          onPressed: () {
            // Handle back navigation
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Forget Your Password?',
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
          'Please Enter The Information Below To Reset Your Password',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey2,
            fontSize: 16,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 50.0), // Padding added from the top
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Phone Number Label
              const Text(
                'Phone Number',
                style: TextStyle(
                    color: Color(0xFF034078),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              // Phone Number Input Field
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFECF1FF),
                  hintText: 'E.G., +20154218457',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 16),
              // National ID Label
              const Text(
                'National ID',
                style: TextStyle(
                    color: Color(0xFF034078),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // National ID Input Field
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFECF1FF),
                  hintText: 'E.G., 123-456-7890',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
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
