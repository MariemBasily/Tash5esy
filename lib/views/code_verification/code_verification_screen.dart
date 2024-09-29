import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/code_verification/widgets/widget.dart';
// import 'package:tash5esy_app/views/add_record/widgets/widget.dart';

class CodeVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarr(
        title: 'Code Sent To Your SMS',
      ),
      // Custom app bar
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: CodeVerificationSection(), // Code verification section
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
