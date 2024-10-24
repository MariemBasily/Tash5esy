import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tash5esy_app/controllers/verifiy_account_controller.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/models/verifiy__account_model.dart';
import 'package:tash5esy_app/views/verifiy_account/widgets/next_button.dart';
import 'package:tash5esy_app/views/verifiy_account/widgets/phone_number_display.dart';
import 'package:tash5esy_app/views/verifiy_account/widgets/pin_code_input.dart';
import 'package:tash5esy_app/views/verifiy_account/widgets/sub_text.dart';
import 'package:tash5esy_app/views/verifiy_account/widgets/text_header.dart';

class PhoneVerificationScreen extends StatefulWidget {
  final String phoneNumber;
  PhoneVerificationScreen({required this.phoneNumber});

  @override
  _PhoneVerificationViewState createState() => _PhoneVerificationViewState();
}

class _PhoneVerificationViewState extends State<PhoneVerificationScreen> {
  String enteredCode = '';
  PhoneVerificationController controller =
      PhoneVerificationController(model: PhoneVerificationModel());

  void updateCode(String code) {
    setState(() {
      enteredCode = code;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextHeader(
          title: tr("verify_phone_number"),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubText(
                        text: tr("enter_6_digit") + " +${widget.phoneNumber}"),
                    SizedBox(height: 25),
                    Center(
                      child: Text(
                        tr("enter_code"),
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "lato",
                        ),
                      ),
                    ),
                    PhoneNumberDisplay(phoneNumber: widget.phoneNumber),
                    PinCodeInput(onChanged: (value) => updateCode(value)),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            tr("didnt_receive"),
                            style:
                                TextStyle(fontSize: 14,
                                color: AppColors.grey,
                                fontFamily: "lato"),
                          ),
                          TextButton(
                            onPressed: () {
                              controller.resendCode(
                                  context, widget.phoneNumber);
                            },
                            child: Text(
                              tr("resend_code"),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.secondary,
                                fontFamily: "lato"
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            NextButton(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
