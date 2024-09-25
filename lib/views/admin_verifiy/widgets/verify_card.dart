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
                height: 200,
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
                          "Your Identity is Verified by the Admins",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "SourceSans3",
                              color: AppColors.primary),
                        ),
                        const SizedBox(height: 25),
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