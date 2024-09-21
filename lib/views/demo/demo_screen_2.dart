import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/demo_controller.dart';
import 'package:tash5esy_app/views/demo/widgets/demo_card.dart';
import 'package:tash5esy_app/views/demo/widgets/demo_explain_card2.dart';
import 'package:tash5esy_app/views/home_screen/home_screen.dart';

class DemoScreen2 extends StatelessWidget {
   DemoScreen2({super.key});

  // @override
  
  final demoControl = DemoController();

  Widget build(BuildContext context) {
    return Stack(
      children: [
        const HomeScreen(),
        Container(
          color: Colors.black.withOpacity(0.5),
        ),
        Center(
          child: Stack(
            children: [
              const Positioned(
                  bottom: 150,
                  left: 10,
                  right: 10,
                  child: DemoCard(
                    text: "Visits",
                    imagePath: "assets/images/visits.png",
                  )),
              Positioned(
                  top: 110,
                  child: DemoExplainCard2(
                      text:
                          "Here You will See Your Hospital Visits, Your Next Visit and Doctor Notes",
                      imagePath: "assets/images/demo 2.png",
                      onPress: () => demoControl.nextPress2(context))
                      )
            ],
          ),
        )
      ],
    );
  }
}
