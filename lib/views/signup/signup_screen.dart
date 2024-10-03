import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/signup_controller.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/signup/widgets/already_have_an_account.dart';
import 'package:tash5esy_app/views/signup/widgets/confirm_password_field.dart';
import 'package:tash5esy_app/views/signup/widgets/email_field.dart';
import 'package:tash5esy_app/views/signup/widgets/full_name_field.dart.dart';
import 'package:tash5esy_app/views/signup/widgets/next_button.dart';
import 'package:tash5esy_app/views/signup/widgets/national_id_field.dart';
import 'package:tash5esy_app/views/signup/widgets/password_field.dart';
import 'package:tash5esy_app/views/signup/widgets/phone_number_field.dart';

class NewAccountScreen extends StatefulWidget {
  @override
  _NewAccountScreenState createState() => _NewAccountScreenState();
}

class _NewAccountScreenState extends State<NewAccountScreen> {
  final UserController _controller = UserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Account".tr(),
          style: TextStyle(
            color: AppColors.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 26,
            fontFamily: "SourceSans3",
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _controller.formKey,
          child: ListView(
            children: [
              FullNameField(onSaved: (value) => _controller.fullName = value),
              SizedBox(height: 16),
              EmailField(onSaved: (value) => _controller.email = value),
              SizedBox(height: 16),
              NationalIdField(
                  onSaved: (value) => _controller.nationalId = value),
              SizedBox(height: 16),
              PhoneNumberField(
                  onSaved: (value) => _controller.phoneNumber = value),
              SizedBox(height: 16),
              PasswordField(onSaved: (value) => _controller.password = value),
              SizedBox(height: 16),
              ConfirmPasswordField(onSaved: (value) {}),
              SizedBox(height: 20),
              NextButton(),
              SizedBox(height: 20),
              AlreadyHaveAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
