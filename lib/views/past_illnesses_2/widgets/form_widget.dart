

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PastIllnessesWidget2 extends StatefulWidget {
  @override
  _PastIllnessesWidgetState createState() => _PastIllnessesWidgetState();
}
class _PastIllnessesWidgetState extends State<PastIllnessesWidget2> {

  
 final TextEditingController _illnessController = TextEditingController();
  final TextEditingController _medicationController = TextEditingController();
  final TextEditingController _symptomsDateController = TextEditingController();

  String? _selectedReturn;
  String? _selectedCare;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,  // Set the width
      height: 600,  // Set the height
      margin: EdgeInsets.all(45),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),  // Circular border for the form container
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),

    child: ListView(
        
        children: <Widget>[
          

          _buildTextField("Do you have any chronic conditions?", "Diabetes", _illnessController),
          SizedBox(height: 10),
          _buildDropdown("Have you received all recommended vaccinations?", 'yes',["Yes", "No"], (value) {
            setState(() {
              _selectedReturn = value;
            });
          }, _selectedReturn),
          SizedBox(height: 10),
          _buildDropdown("What medical care did you get for the illness?", 'Vitamins and supplements', ["Vitamins and supplements", "Medication", "Surgery"], (value) {
            setState(() {
              _selectedCare = value;
            });
          }, _selectedCare),
          SizedBox(height: 10),
          _buildDateField("When did you first notice the disease's symptoms?", "17/9", _symptomsDateController),
          SizedBox(height: 10),
          _buildTextField("Do you have any emergency medication on you?", "Antibiotics", _medicationController),
          SizedBox(height: 10),
        ],
      ),
    );
  }


  Widget _buildTextField(String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown(String label,Value, List<String> items, ValueChanged<String?> onChanged, String? selectedItem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: selectedItem,
          onChanged: onChanged,
          items: items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  Widget _buildDateField(String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.calendar_month, color: Color.fromARGB(255, 8, 74, 121)),
          ),
          onTap: () async {
            var context;
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
            );

            if (pickedDate != null) {
              String formattedDate = DateFormat('d/M').format(pickedDate);
              setState(() {
                controller.text = formattedDate;
              });
            }
          },
          readOnly: true,
        ),
     ],
);
  }
}