import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/admin_verifiy/widgets/verify_button.dart';

class VerifyCard extends StatelessWidget {

  final VoidCallback onVerify;

  const VerifyCard({super.key, required this.onVerify});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
                padding: const EdgeInsets.all(16),
                height: 180,
                width: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "done_verfi".tr(),
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "lato",
                              color: AppColors.primary),
                        ),
                        const SizedBox(height: 30),
                        VerifyButton(onPressed: onVerify)
                      ],
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}