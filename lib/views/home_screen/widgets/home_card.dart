import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class HomeCard extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback click;

  HomeCard(
      {super.key,
      required this.text,
      required this.imagePath,
      required this.click});

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: () => click(),
          child: Container(
            height: 80,
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color:const Color.fromARGB(30, 0, 122, 255),
            ),
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
                          color: AppColors.secondary),
                    ),
                    Image.asset(imagePath),
                  ],
                ),
              )),
        );
  }
}
