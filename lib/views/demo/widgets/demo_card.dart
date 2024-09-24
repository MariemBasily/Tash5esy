import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class DemoCard extends StatelessWidget {
  final String text;
  final String imagePath;

 const DemoCard({
    super.key,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        margin: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                   decoration: TextDecoration.none,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: "SourceSans3",
                    color: AppColors.primary),
              ),
              Image.asset(imagePath),
            ],
          ),
        ));
  }
}
