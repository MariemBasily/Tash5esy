import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        "Welcome to Tash5esy, your dedicated health portal where you can easily access and manage your medical records and stay informed about your health by enhancing your knowledge of your health and controlling your well-being.",
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 14, color: Colors.grey),
      ),
    );
  }
}
