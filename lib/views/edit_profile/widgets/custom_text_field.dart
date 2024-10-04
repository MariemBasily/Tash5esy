import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  const CustomTextField({super.key});
    

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Full Name',
          style: TextStyle(
              color: Color(0xFF034078),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFECF1FF),
            hintText: 'John Doe',
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        const Text(
          'Bio',
          style: TextStyle(
              color: Color(0xFF034078),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFECF1FF),
            hintText: 'Stay Smail',
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(height: 10),
        const Text(
          'Email',
          style: TextStyle(
              color: Color(0xFF034078),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFECF1FF),
            hintText: 'johndoe@example.com',
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
