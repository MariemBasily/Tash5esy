import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            'General Information',
            style: TextStyle(
              fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "lato",
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 20),

          // Input Fields
          const CustomTextField( label: 'First name & Last name', initialValue: 'Jessica Jung'),
          const CustomTextField(label: 'Age', initialValue: '26-31'),
          const CustomTextField(label: 'Gender', initialValue: 'Male'),
          const CustomTextField( label: 'Date of birth', initialValue: '1999/09/21'),
          const CustomTextField(label: 'Your Job', initialValue: 'Engineer'),
          const CustomTextField(label: 'Are You Married?', initialValue: 'No'),
          const CustomTextField( label: 'Where do you live?', initialValue: 'Cairo'),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final String initialValue;

  const CustomTextField({
    required this.label,
    required this.initialValue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller =
        TextEditingController(text: initialValue);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
          color: AppColors.grey2,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "lato"
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                   BorderSide(color: AppColors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.grey),
            ),
          ),
          onTap: () {
            controller.clear();
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
