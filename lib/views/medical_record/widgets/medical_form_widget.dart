import 'package:flutter/material.dart';

class MedicalFormWidget extends StatefulWidget {
  @override
  _MedicalFormWidgetState createState() => _MedicalFormWidgetState();
}

class _MedicalFormWidgetState extends State<MedicalFormWidget> {
  final _formKey = GlobalKey<FormState>();

  String _selectedAge = '26-31';
  String _selectedGender = 'Male';
  String _selectedMaritalStatus = 'No';
  String _selectedCity = 'Cairo';
  DateTime _selectedDate = DateTime(1999, 09, 21);

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
          // Title for the form
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Text(
                'General Information',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF034078), // Custom color for the title
                ),
              ),
            ),
          ),
          // Form content
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                // First Name and Last Name Input
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('First Name and Last Name'),
                    // label: Text('First name & Last name'),
                    hintText: 'Salma Adel',
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
                ),
                SizedBox(height: 16.0),

                // Age and Gender Dropdowns
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Age',
                          labelStyle: TextStyle(color: Colors.grey),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        value: _selectedAge,
                        items: <String>['18-25', '26-31', '32-40', '40+']
                            .map((age) {
                          return DropdownMenuItem<String>(
                            value: age,
                            child: Text(age),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedAge = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          labelStyle: TextStyle(color: Colors.grey),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        value: _selectedGender,
                        items:
                            <String>['Male', 'Female', 'Other'].map((gender) {
                          return DropdownMenuItem<String>(
                            value: gender,
                            child: Text(gender),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),

                // Date of Birth Field
                TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Date of birth',
                    labelStyle: TextStyle(color: Colors.grey),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: _selectDate,
                    ),
                  ),
                  initialValue: "${_selectedDate.toLocal()}".split(' ')[0],
                ),
                SizedBox(height: 16.0),

                // Job Field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Your Job',
                    hintText: 'Engineer',
                    hintStyle:
                        TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                    labelStyle: TextStyle(color: Colors.grey),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),

                // Marital Status and City Fields
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Are You Married?',
                          labelStyle: TextStyle(color: Colors.grey),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        value: _selectedMaritalStatus,
                        items: <String>['Yes', 'No'].map((status) {
                          return DropdownMenuItem<String>(
                            value: status,
                            child: Text(status),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedMaritalStatus = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Where do you live?',
                          hintText: 'Cairo',
                          hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 26, 25, 25)),
                          labelStyle: TextStyle(color: Colors.grey),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        initialValue: _selectedCity,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }
}
