import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/identity_verification_2_controller.dart';
import 'package:tash5esy_app/views/nid_verification_1/widgets/photo_upload.dart';

class PhotoUploadSection2 extends StatelessWidget {
  final IdentityVerificationController2 controller;

  const PhotoUploadSection2({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PhotoUploadWidget(
          label: "Selfie Photo".tr(),
          subText: "It’s required by law to verify your identity".tr(), 
          onPressed: () async {
            await controller.pickImage(context, true); // Assume this updates the frontImagePath
          },
          imagePath: controller.model2.frontImagePath, // Pass the path of the front NID image
),
        SizedBox(height: 20),
      ],
    );
  }
}
