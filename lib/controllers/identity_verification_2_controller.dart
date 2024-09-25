import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tash5esy_app/models/identity_verification_2_model.dart';

class IdentityVerificationController2 {
  final IdentityVerification2Model model2;
  final picker = ImagePicker();
  IdentityVerificationController2(this.model2);

  Future<void> pickImage(BuildContext context, bool isFront) async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      if (isFront) {
        model2.frontImagePath = pickedFile.path;
      } else {
        model2.backImagePath = pickedFile.path;
      }
    }
  }
}
