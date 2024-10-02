import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tash5esy_app/models/identity_verification_model.dart';

class IdentityVerificationController {
  final IdentityVerificationModel model;
  final picker = ImagePicker();

  IdentityVerificationController(this.model);

  Future<void> pickImage(BuildContext context, bool isFront) async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      if (isFront) {
        model.frontImagePath = pickedFile.path;
      } else {
        model.backImagePath = pickedFile.path;
      }
    }
  }
}
