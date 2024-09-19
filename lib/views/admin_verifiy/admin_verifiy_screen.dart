import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/admin_verifiy/widgets/verify_card.dart';

class AdminVerifiyScreen extends StatelessWidget {
  const AdminVerifiyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: const Stack(
        children: [
          Center(
              child: VerifyCard()
              )
        ],
      ),
    );
  }
}
