import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tash5esy_35/Screens/AddRecords.dart';
import 'package:tash5esy_35/Screens/general_info.dart';
import 'package:tash5esy_35/controller/OvalBottomClipper.dart';

class MedicalHistoryForm extends StatefulWidget {
  @override
  _MedicalHistoryFormState createState() => _MedicalHistoryFormState();
}
class _MedicalHistoryFormState extends State<MedicalHistoryForm> {
  final _formKey = GlobalKey<FormState>();

  String _selectedAge = '26-31';
  String _selectedGender = 'Male';
  String _selectedMaritalStatus = 'No';
  String _selectedCity = 'Cairo';
  DateTime _selectedDate = DateTime(1999, 09, 21);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create A Health Profile', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xFF034078), 
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
           onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) => (AddRecordScreen())));
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          ClipPath(
            clipper: OvalBottomClipper(),
            child: Container(
              height: 300, 
              color: Color(0xFF034078),
            ),
          ),
          SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Center(
              child: Container(
                margin: EdgeInsets.only(top: 60), 
                padding: EdgeInsets.fromLTRB(100,20,20,20),
                width: 290,
                height:500 ,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(0, 5), 
                    ),
                   
                  ],
                ),
                
                
            ),
         



          ),
            
        
            ]
        ),
     ),
        ],
      children: [
          Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'First name & Last name',
                    border: OutlineInputBorder(),
                  ),
                  initialValue: 'Jessica Jung',
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Age',
                          border: OutlineInputBorder(),
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
                          border: OutlineInputBorder(),
                        ),
                        value: _selectedGender,
                        items: <String>['Male', 'Female', 'Other']
                            .map((gender) {
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
                TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Date of birth',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: _selectDate,
                    ),
                  ),
                  initialValue: "${_selectedDate.toLocal()}".split(' ')[0],
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Your Job',
                    border: OutlineInputBorder(),
                  ),
                  initialValue: 'Engineer',
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Are You Married?',
                          border: OutlineInputBorder(),
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
                          border: OutlineInputBorder(),
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

   bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF0A6FB7),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (builder) =>generalInfo()));
          },
          child: Text('Next', style: TextStyle(fontSize: 18 ,color: Colors.white) ),
        ),
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

         