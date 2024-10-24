import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/identity_verification_2_controller.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/nid_Verification_2/widgets/photo_upload_section_2.dart';
import 'package:tash5esy_app/views/nid_Verification_2/widgets/text_header_2.dart';
import 'package:tash5esy_app/models/identity_verification_2_model.dart';
import 'package:tash5esy_app/views/nid_Verification_2/widgets/verifiy_button.dart';

class IdentityVerificationScreen2 extends StatefulWidget {
  @override
  _IdentityVerificationScreenState createState() =>
      _IdentityVerificationScreenState();
}

class _IdentityVerificationScreenState
    extends State<IdentityVerificationScreen2> {
    final IdentityVerificationController2 controller =
      IdentityVerificationController2(IdentityVerification2Model(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Verify Identity".tr(),
            style: TextStyle(
                color: AppColors.secondary, fontWeight: FontWeight.bold,fontFamily: "lato"),
          ),
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
            TextHeader2(),
            SizedBox(height: 20),
            PhotoUploadSection2(controller: controller),
            SizedBox(height: 250),
            verifiyButton(),
          ],
        ),
      ),
    );
  }
}
