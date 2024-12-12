import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class AllergyForm extends StatelessWidget {
  const AllergyForm({Key? key}) : super(key: key);

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
          CustomTextField( label: 'Do you have any allergies?', initialValue: 'NO'),
          CustomTextField(label: 'What kind of allergies do you have?', initialValue: 'Eye Allergies'),
          CustomTextField(label: 'When was your allergy first diagnosed?', initialValue: '7 years ago'),
          CustomTextField( label: 'Do you have any family members with allergies?', initialValue: 'No'),
          CustomTextField(label: 'What happens to your body when exposed to an allergen?', initialValue: 'Wheezing and difficulty breathing'),
          CustomTextField(label: 'Have you experienced any new allergens recently?', initialValue: 'No'),
          
          CustomTextField(label: 'Do you have a family history of chronic diseases such as cancer, diabetes, heart disease?', initialValue: 'If yes say what is?'),
          CustomTextField(label: 'Have there been any genetic disorders or congenital disabilities in your family?', initialValue: 'If yes say what is?'),
          CustomTextField( label: 'Have your family members been hospitalized or had major medical procedures?', initialValue: 'If yes say what is?'),
          CustomTextField(label: 'Have any family members passed away at a younger age due to health-related issues?', initialValue: 'If yes say what is?'),
          CustomTextField(label: 'Do you have a disabled person in your family?', initialValue: 'Yes'),

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
