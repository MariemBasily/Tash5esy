import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class form_screen extends StatelessWidget {
  const form_screen ({Key? key}) : super(key: key);

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
          const CustomTextField( label: 'Heigh (cm)', initialValue: '160'),
          const CustomTextField(label: 'Weight (Kg)', initialValue: '70'),
          const CustomTextField(label: 'Blood Group', initialValue: 'A+'),
          const CustomTextField( label: 'Phone Number', initialValue: '01235*****'),
          const CustomTextField(label: 'Email Address', initialValue: 'Name@gmail.com'),

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
         String? selectedBloodGroup;

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
            style: const TextStyle(
            color: Color.fromARGB(144, 158, 158, 158), 
          ),
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
                    child: Text('A-'),
                    value: 'A-',
                  ),
                  DropdownMenuItem(
                    child: Text('B+'),
                    value: 'B+',
                  ),
                  DropdownMenuItem(
                    child: Text('B-'),
                    value: 'B-',
                  ),
                  DropdownMenuItem(
                    child: Text('AB+'),
                    value: 'AB+',
                  ),
                  DropdownMenuItem(
                    child: Text('AB-'),
                    value: 'AB-',
                  ),
                  DropdownMenuItem(
                    child: Text('O+'),
                    value: 'O+',
                  ),
                  DropdownMenuItem(
                    child: Text('O-'),
                    value: 'O-',
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

