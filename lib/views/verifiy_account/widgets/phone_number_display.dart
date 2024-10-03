import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
class PhoneNumberDisplay extends StatelessWidget {
  final String phoneNumber;

  const PhoneNumberDisplay({required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Text(
      phoneNumber,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppColors.grey,
        fontFamily: "lato",
      ),
    );
  }
}
