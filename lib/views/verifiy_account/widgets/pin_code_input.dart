import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class PinCodeInput extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  const PinCodeInput(
      {Key? key, required this.onChanged, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      onChanged: onChanged,
      controller: controller,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(15),
        fieldHeight: 60,
        fieldWidth: 50,
        activeFillColor: Colors.white,
        inactiveColor: AppColors.grey,
        activeColor: AppColors.secondary,
        selectedColor: AppColors.secondary,
      ),
    );
  }
}
