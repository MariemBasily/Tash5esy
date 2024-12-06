import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/identity_verification_controller.dart';
import 'package:tash5esy_app/views/nid_verification_1/widgets/photo_upload.dart';

class PhotoUploadSection extends StatelessWidget {
  final IdentityVerificationController controller;

  const PhotoUploadSection({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PhotoUploadWidget(
          label: "Front Of NID Card".tr(),
          subText: "Take a Front Photo Of Your NID Card".tr(),
          onPressed: () async {
            await controller.pickImage(context, true); 
          },
          imagePath: controller.model.frontImagePath,
        ),
        SizedBox(height: 20),
        PhotoUploadWidget(
          label: "Back Of NID Card".tr(),
          subText: "Take a Back Photo Of Your NID Card.".tr(),
          onPressed: () async {
            await controller.pickImage(context, false); 
          },
          imagePath: controller.model.backImagePath, 
        ),
      ],
    );
  }
}
