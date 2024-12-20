import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/forget_Password/widgets/burron_widget.dart';
import 'package:tash5esy_app/views/forget_Password/widgets/widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarr(
        title: 'Forget Your Password?',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: CodeVerificationSection(), // Code verification section
            ),

            Spacer(), 
            ButtonWidget(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
