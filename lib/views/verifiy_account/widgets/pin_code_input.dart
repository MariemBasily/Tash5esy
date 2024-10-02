import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class PinCodeInput extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const PinCodeInput({required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      onChanged: onChanged,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white, // Active fill color
        inactiveColor: AppColors.grey, // Grey outline when inactive
        activeColor: AppColors.secondary, // Secondary color when active
        selectedColor: AppColors.secondary, // Secondary color when selected
      ),
    );
  }
}
