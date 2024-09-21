import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class DemoExplainCard2 extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPress;
  const DemoExplainCard2({super.key, required this.text, required this.imagePath, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: 280,
          height: 200,
          margin: const EdgeInsets.all(10),
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
               decoration: TextDecoration.none,
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
                fontFamily: "raleway",
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
          left: 5,
          child: Image.asset(
            imagePath,
            width: 190,
          )),
      Positioned(
          bottom: 30,
          right: 30,
          child: ElevatedButton(
            onPressed: onPress,
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            child:const Text("Next",
                style: TextStyle(
                    fontFamily: "SourceSans3",
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
          )),
    ]);
  }
}
