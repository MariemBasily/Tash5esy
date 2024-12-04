import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/identity_verification_2_controller.dart';
import 'package:tash5esy_app/core/components/custom_app_bar.dart';
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
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title:"Verify Identity".tr(),
        centerTitle: true,
          ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextHeader2(),
              const SizedBox(height: 20),
              PhotoUploadSection2(controller: controller),
              const SizedBox(height: 220),
              verifiyButton(),
            ],
          ),
        ),
      ),
    );
  }
}
