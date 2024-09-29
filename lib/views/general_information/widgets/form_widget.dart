import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330, // Set the width
      height: 600, // Set the height
      margin: EdgeInsets.all(45),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(20), // Circular border for the form container
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  decoration: InputDecoration(
                    hintStyle:
                        TextStyle(color: const Color.fromARGB(255, 22, 22, 22)),
                    labelStyle: TextStyle(
                        color: Colors.grey), // Label color set to gray
                    floatingLabelBehavior: FloatingLabelBehavior
                        .always, // Label always outside the border
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Circular border
                      borderSide: BorderSide(
                          color: Colors.grey), // Border color set to gray
                    ),
                  ),
                  label: 'Heigh (cm)',
                  hintText: '1.65',
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: CustomTextField(
                  decoration: InputDecoration(
                    hintStyle:
                        TextStyle(color: const Color.fromARGB(255, 22, 22, 22)),
                    labelStyle: TextStyle(
                        color: Colors.grey), // Label color set to gray
                    floatingLabelBehavior: FloatingLabelBehavior
                        .always, // Label always outside the border
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Circular border
                      borderSide: BorderSide(
                          color: Colors.grey), // Border color set to gray
                    ),
                  ),
                  label: 'Weight (kg)',
                  hintText: '48',
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          // Blood Group Field
          CustomDropdownField(
            label: 'Blood group',
            value: 'O',
            items: ['A', 'B', 'AB', 'O'],
          ),
          SizedBox(height: 16),
          // Phone Number Field with Icon
          CustomIconTextField(
            label: 'Your Phone Number',
            hintText: '012453675867',
            icon: Icons.phone,
          ),
          SizedBox(height: 16),
          // Email Address Field with Google Icon
          CustomIconTextField(
            label: 'Your Email Address',
            hintText: 'Sarah321@gmail.com',
            icon: Icons.mail_outline,
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;

  CustomTextField(
      {required this.label,
      required this.hintText,
      required InputDecoration decoration});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey, // Grey color for the label
          ),
        ),
        SizedBox(height: 8, width: 20),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          ),
        ),
      ],
    );
  }
}

class CustomDropdownField extends StatelessWidget {
  final String label;
  final String value;
  final List<String> items;

  CustomDropdownField(
      {required this.label, required this.value, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey, // Grey color for the label
          ),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
          ),
        ),
      ],
    );
  }
}

class CustomIconTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData? icon;
  final String? iconImagePath; // Optional field for custom image icons

  CustomIconTextField(
      {required this.label,
      required this.hintText,
      this.icon,
      this.iconImagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey, // Grey color for the label
          ),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            prefixIcon: icon != null
                ? Icon(icon, color: Colors.black) // Black color for the icon
                : iconImagePath != null
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(iconImagePath!, width: 2, height: 2),
                      )
                    : null,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          ),
        ),
      ],
    );
  }
}
