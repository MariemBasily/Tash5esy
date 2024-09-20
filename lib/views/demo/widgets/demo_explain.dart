import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class DemoExplain extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPress;
  const DemoExplain({super.key, required this.text, required this.imagePath, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: 280,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10,
              ),
            ],
          ),
          padding: const EdgeInsets.all(10),
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
                fontFamily: "Raleway",
                shadows: [
                  Shadow(
                    blurRadius: 3.0,
                    offset: const Offset(2.0, 2.0),
                    color:
                        const Color.fromARGB(255, 3, 64, 120).withOpacity(0.5),
                  )
                ]),
          )),
      Positioned(
          bottom: 10,
          right: 10,
          child: Image.asset(
            imagePath,
            height: 120,
          )),
      Positioned(
          bottom: 25,
          left: 25,
          child: ElevatedButton(
            onPressed: onPress,
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            child: Text("Next",
                style: TextStyle(
                    fontFamily: "SourceSans3",
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
          )),
    ]);
  }
}
