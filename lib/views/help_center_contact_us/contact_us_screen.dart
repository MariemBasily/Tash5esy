import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/help_center_contact_us/widgets/widget.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              AppBarWithSearch(),
              SizedBox(height: 20),
              TabButtons(),
              SizedBox(height: 20),
              CategoryChips(),
              SizedBox(height: 20),
              FAQList(),
            ],
          ),
        ),
      ),
    );
  }
}
