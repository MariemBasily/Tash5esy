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
            await controller.pickImage(context, true); // Assume this updates the frontImagePath
          },
          imagePath: controller.model.frontImagePath, // Pass the path of the front NID image
        ),
        SizedBox(height: 20),
        PhotoUploadWidget(
          label: "Back Of NID Card".tr(),
          subText: "Take a Back Photo Of Your NID Card.".tr(),
          onPressed: () async {
            await controller.pickImage(context, false); // Assume this updates the backImagePath
          },
          imagePath: controller.model.backImagePath, // Pass the path of the back NID image
        ),
      ],
    );
  }
}
