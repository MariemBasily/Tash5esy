import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class past_illnesses2 extends StatelessWidget {
  const past_illnesses2 ({Key? key}) : super(key: key);

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
          CustomTextField( label: 'Do you have any chronic conditions?', initialValue: 'Diabetes'),
          CustomTextField(label: 'Have you had any surgeries or hospitalizations in the past?', initialValue: 'If yes say what is?'),
          CustomTextField(label: 'Have you received all recommended vaccinations?', initialValue: 'Yes'),
          CustomTextField( label: 'Have you had any recent injuries or accidents?', initialValue: 'If yes say what is?'),
          CustomTextField(label: 'Have you had any recent blood tests or imaging studies?', initialValue: 'Yes'),
          CustomTextField(label: 'Do you smoke or use any tobacco products?', initialValue: 'Yes'),

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
         String? selectedBloodGroup;

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
                   const BorderSide(color: AppColors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.grey),
            ),
          ),

             groupId: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Blood group',
                ),
                value: selectedBloodGroup,
                  items: const[ 
                  DropdownMenuItem(
                    value: 'A+',
                    child: Text('A+'),
                  ),
                  DropdownMenuItem(
                    value: 'A-',
                    child: Text('A-'),
                  ),
                  DropdownMenuItem(
                    value: 'B+',
                    child: Text('B+'),
                  ),
                  DropdownMenuItem(
                    value: 'B-',
                    child: Text('B-'),
                  ),
                  DropdownMenuItem(
                    value: 'AB+',
                    child: Text('AB+'),
                  ),
                  DropdownMenuItem(
                    value: 'AB-',
                    child: Text('AB-'),
                  ),
                  DropdownMenuItem(
                    value: 'O+',
                    child: Text('O+'),
                  ),
                  DropdownMenuItem(
                    value: 'O-',
                    child: Text('O-'),
                  ),
                ], onChanged: (String? value) {  setState(() {
                    selectedBloodGroup = value;
                  }); },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select your blood group';
                  }
                  return null;
                },
              ),
          onTap: () {
            controller.clear();
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
  
  void setState(Null Function() param0) {}
}

