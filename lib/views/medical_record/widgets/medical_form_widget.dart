import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for date formatting

class MedicalFormWidget extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MedicalFormWidgetState createState() => _MedicalFormWidgetState();
}

class _MedicalFormWidgetState extends State<MedicalFormWidget> {
  // Colors (icon, white, gray) are defined here
  final Color _iconColor = const Color(0xFF034078); // Icon color
  final Color _whiteColor = Colors.white; // White color
  final Color _grayColor = Colors.grey; // Gray color for hint text

  // State variables for Dropdown fields
  String? _selectedAge;
  String? _selectedGender;
  String? _selectedMaritalStatus;
  String? _selectedBloodType;
  String? _dateOfBirth; // Variable to hold the date of birth

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medical Data Form"),
        backgroundColor: _iconColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: _whiteColor),
          onPressed: () {
            Navigator.pop(context); // To navigate back
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Pass the colors and state variables to the PersonalInfoForm widget
          PersonalInfoForm(
            iconColor: _iconColor,
            whiteColor: _whiteColor,
            grayColor: _grayColor,
            selectedAge: _selectedAge,
            selectedGender: _selectedGender,
            selectedMaritalStatus: _selectedMaritalStatus,
            dateOfBirth: _dateOfBirth, // Pass the date of birth
            onAgeChanged: (value) {
              setState(() {
                _selectedAge = value;
              });
            },
            onGenderChanged: (value) {
              setState(() {
                _selectedGender = value;
              });
            },
            onMaritalStatusChanged: (value) {
              setState(() {
                _selectedMaritalStatus = value;
              });
            },
            onDateOfBirthChanged: (value) {
              setState(() {
                _dateOfBirth = value;
              });
            },
          ),
          const SizedBox(height: 20),
          // Pass the colors and state variables to the MedicalInfoForm widget
          MedicalInfoForm(
            iconColor: _iconColor,
            whiteColor: _whiteColor,
            grayColor: _grayColor,
            selectedBloodType: _selectedBloodType,
            onBloodTypeChanged: (value) {
              setState(() {
                _selectedBloodType = value;
              });
            },
          ),
          const SizedBox(height: 20),
          // Add the "Next" button at the bottom of the ListView
          NextButton(
            onNextPressed: () {
              // Perform any desired action when "Next" is pressed
              print("Next button pressed");
            },
            buttonColor: _iconColor, // Pass the custom color
          ),
        ],
      ),
    );
  }
}

// Next Button widget
class NextButton extends StatelessWidget {
  final VoidCallback onNextPressed;
  final Color buttonColor;

  NextButton({required this.onNextPressed, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onNextPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: buttonColor, // Custom button color
        ),
        child: const Text(
          "Next",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class PersonalInfoForm extends StatelessWidget {
  final Color iconColor;
  final Color whiteColor;
  final Color grayColor;
  final String? selectedAge;
  final String? selectedGender;
  final String? selectedMaritalStatus;
  final String? dateOfBirth; // Added to hold the date of birth
  final Function(String?) onAgeChanged;
  final Function(String?) onGenderChanged;
  final Function(String?) onMaritalStatusChanged;
  final Function(String?) onDateOfBirthChanged; // Callback for date of birth

  PersonalInfoForm({
    required this.iconColor,
    required this.whiteColor,
    required this.grayColor,
    required this.selectedAge,
    required this.selectedGender,
    required this.selectedMaritalStatus,
    required this.dateOfBirth, // Pass the date of birth
    required this.onAgeChanged,
    required this.onGenderChanged,
    required this.onMaritalStatusChanged,
    required this.onDateOfBirthChanged, // Pass the callback
  });
  
  get context => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // First Name & Last Name
        buildTextField("First Name & Last Name", "Enter your full name", Icons.person),
        const SizedBox(height: 20),
        // Age & Gender
        Row(
          children: [
            Expanded(child: buildDropDownField("Age", ["18-25", "26-31", "32-40"], selectedAge, onAgeChanged)),
            const SizedBox(width: 20),
            Expanded(child: buildDropDownField("Gender", ["Male", "Female"], selectedGender, onGenderChanged)),
          ],
        ),
        const SizedBox(height: 20),
        // Date of Birth
        buildDateField("Date of Birth", dateOfBirth, onDateOfBirthChanged, iconColor),
        const SizedBox(height: 20),
        // Job Title
        buildTextField("Your Job", "Enter your job title", Icons.work),
        const SizedBox(height: 20),
        // Marital Status & Place of Residence
        Row(
          children: [
            Expanded(
              child: buildDropDownField(
                "Are You Married?",
                ["Yes", "No"],
                selectedMaritalStatus,
                onMaritalStatusChanged,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(child: buildTextField("Where do you live?", "Enter city", Icons.location_on)),
          ],
        ),
      ],
    );
  }

  Widget buildTextField(String label, String hint, IconData icon) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        hintStyle: TextStyle(color: grayColor), // Hint text color set to gray
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  Widget buildDateField(String label, String? date, Function(String?) onChanged, Color iconColor) {
    return TextField(
      readOnly: true,
      onTap: () async {
        DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: date != null ? DateFormat('yyyy-MM-dd').parse(date) : DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (selectedDate != null) {
          String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
          onChanged(formattedDate); // Update date of birth
        }
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: "YYYY/MM/DD",
        hintStyle: TextStyle(color: grayColor), // Hint text color set to gray
        prefixIcon: Icon(Icons.calendar_today, color: iconColor),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      controller: TextEditingController(text: date), // Display selected date
    );
  }

  Widget buildDropDownField(String label, List<String> options, String? selectedValue, Function(String?) onChanged) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      decoration: InputDecoration(
        labelText: label,
        hintStyle: TextStyle(color: grayColor), // Hint text color set to gray
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      items: options.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}

class MedicalInfoForm extends StatelessWidget {
  final Color iconColor;
  final Color whiteColor;
  final Color grayColor;
  final String? selectedBloodType;
  final Function(String?) onBloodTypeChanged;

  MedicalInfoForm({
    required this.iconColor,
    required this.whiteColor,
    required this.grayColor,
    required this.selectedBloodType,
    required this.onBloodTypeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Height & Weight
        Row(
          children: [
            Expanded(child: buildTextField("Height (cm)", "Enter your height", Icons.height)),
            const SizedBox(width: 20),
            Expanded(child: buildTextField("Weight (kg)", "Enter your weight", Icons.fitness_center)),
          ],
        ),
        const SizedBox(height: 20),
        // Blood Type
        buildDropDownField("Blood Type", ["A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-"], selectedBloodType, onBloodTypeChanged),
      ],
    );
  }

  Widget buildTextField(String label, String hint, IconData icon) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        hintStyle: TextStyle(color: grayColor), // Hint text color set to gray
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }

  Widget buildDropDownField(String label, List<String> options, String? selectedValue, Function(String?) onChanged) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      decoration: InputDecoration(
        labelText: label,
        hintStyle: TextStyle(color: grayColor), // Hint text color set to gray
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      items: options.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
