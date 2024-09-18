import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class HomeCard extends StatelessWidget {

  final String text;
  final String imagePath;

  const HomeCard({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
      margin: EdgeInsets.all(40),
      height: 80,
      decoration: BoxDecoration(
          color: Color.fromARGB(30, 0, 122, 255),
          borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  fontFamily: "SourceCodePro",
                  color: AppColors.secondary
                ),
              ),
              Image.asset(imagePath),
              
            ],
          ),
            )
          
    ),
      ) ;
  }
}
