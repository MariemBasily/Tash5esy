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
      child: const Column(
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
          SizedBox(height: 20),

          // Input Fields
          CustomTextField( label: 'First name & Last name', initialValue: 'Jessica Jung'),
          CustomTextField(label: 'Age', initialValue: '26-31'),
          CustomTextField(label: 'Gender', initialValue: 'Male'),
          CustomTextField( label: 'Date of birth', initialValue: '1999/09/21'),
          CustomTextField(label: 'Your Job', initialValue: 'Engineer'),
          CustomTextField(label: 'Are You Married?', initialValue: 'No'),
          CustomTextField( label: 'Where do you live?', initialValue: 'Cairo'),

          SizedBox(height: 20),
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller =
        TextEditingController(text: initialValue);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
          color: AppColors.grey2,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "lato"

          ),
        ),
        
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
           style: const TextStyle(
            color: Color.fromARGB(144, 158, 158, 158), 
          ),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                   const BorderSide(  color: AppColors.grey2,   
),



            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.grey),

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
