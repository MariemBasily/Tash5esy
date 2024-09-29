import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/reset_password/widgets/widget.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarr(
        title: 'Forget Your Password?',
      ),
      // Custom app bar
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Newpassword(), // Code verification section
            ),

            Spacer(), // Add some space between the code section and the button
            VerifyButton(), // Verify Button
            SizedBox(height: 30), // Add space under the button
          ],
        ),
      ),
    );
  }
}
