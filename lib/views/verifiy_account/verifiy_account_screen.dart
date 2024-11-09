import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tash5esy_app/controllers/verifiy_account_controller.dart';
import 'package:tash5esy_app/core/components/custom_app_bar.dart';
import 'package:tash5esy_app/models/verifiy__account_model.dart';
import 'package:tash5esy_app/views/verifiy_account/widgets/next_button.dart';
import 'package:tash5esy_app/views/verifiy_account/widgets/phone_number_display.dart';
import 'package:tash5esy_app/views/verifiy_account/widgets/pin_code_input.dart';
import 'package:tash5esy_app/views/verifiy_account/widgets/sub_text.dart';
import 'package:tash5esy_app/core/style/app_text_styles.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class PhoneVerificationScreen extends StatefulWidget {
  final String phoneNumber;
  const PhoneVerificationScreen({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  _PhoneVerificationScreenState createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  String enteredCode = '';
  final PhoneVerificationController controller =
      PhoneVerificationController(model: PhoneVerificationModel());
  final TextEditingController codeController = TextEditingController();

  void updateCode(String code) {
    setState(() {
      enteredCode = code;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        title: tr("verify_phone_number"),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubText(
                    text:
                        "${tr("Enter The 6-digit Number That We Sent To")} +${widget.phoneNumber}",
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: Text(
                      tr("enter_code"),
                      style: AppTextStyles.bodyTextLarge.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                  PhoneNumberDisplay(phoneNumber: widget.phoneNumber),
                  const SizedBox(height: 16),
                  PinCodeInput(
                    onChanged: updateCode,
                    controller: codeController,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          tr("didnt_receive"),
                          style: AppTextStyles.bodyTextSmall.copyWith(
                            color: AppColors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            controller.resendCode(context, widget.phoneNumber);
                          },
                          child: Text(
                            tr("resend_code"),
                            style: AppTextStyles.bodyTextSmall.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.secondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                  height: 300), 
              NextButton(), 
            ],
          ),
        ),
      ),
    );
  }
}
