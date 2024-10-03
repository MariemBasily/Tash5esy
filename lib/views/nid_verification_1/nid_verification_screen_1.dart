import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/controllers/identity_verification_controller.dart';
import 'package:tash5esy_app/models/identity_verification_model.dart';
import 'package:tash5esy_app/views/nid_verification_1/widgets/next_button.dart';
import 'package:tash5esy_app/views/nid_verification_1/widgets/photo_upload_section.dart';
import 'package:tash5esy_app/views/nid_verification_1/widgets/text_header.dart';

class IdentityVerificationScreen extends StatefulWidget {
  @override
  _IdentityVerificationScreenState createState() =>_IdentityVerificationScreenState();
}
class _IdentityVerificationScreenState
    extends State<IdentityVerificationScreen> {
  final IdentityVerificationController controller =
      IdentityVerificationController(IdentityVerificationModel(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Center(
          child: Text("Verify Identity".tr(), style: TextStyle(color: AppColors.secondary, fontWeight: FontWeight.bold,fontFamily: "lato"),),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.primary),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextHeaderWidget(),
            SizedBox(height: 20),
            PhotoUploadSection(controller: controller),
            SizedBox(height: 20),
            NextButton2(
            ),
          ],
        ),
      ),
    );
  }
}
