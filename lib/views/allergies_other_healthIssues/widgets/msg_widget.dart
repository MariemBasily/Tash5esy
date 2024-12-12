import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/home_screen/home_screen.dart';

class MsgWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.grey,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Successful',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "lato",
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Congratulations! Your Medical Record Has Been Saved. '
                  'Click Back to back to Home page',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.grey2,fontFamily: "lato"),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondary,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => HomeScreen(),
                        ),
                      );
                    },
                  child: const Text(
                    'Back',
                    style: TextStyle(color: AppColors.grey, fontSize: 16,fontFamily: "lato"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
