import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/admin_verifiy/widgets/verify_card.dart';
import 'package:tash5esy_app/controllers/admin_verify_controller.dart';

class AdminVerifiyScreen extends StatelessWidget {
  const AdminVerifiyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = AdminVerifyController();

    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Stack(
        children: [
          Center(
              child: VerifyCard(
            onVerify: () => controller.onContinue(context),
          ))
        ],
      ),
    );
  }
}
