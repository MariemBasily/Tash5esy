import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class RememberMeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: false, onChanged: (bool? value) {}),
            Text('Remember me'.tr()),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/forgot_password');
          },
          child: Text(
            'Forget Password?'.tr(),
            style: TextStyle(color: AppColors.secondary),
          ),
        ),
      ],
    );
  }
}
