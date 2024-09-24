import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/demo_controller.dart';
import 'package:tash5esy_app/views/demo/widgets/demo_card.dart';
import 'package:tash5esy_app/views/demo/widgets/demo_explain_card1.dart';
import 'package:tash5esy_app/views/home_screen/home_screen.dart';

class DemoScreen extends StatelessWidget {
  DemoScreen({super.key});

  // @override
  final demoControl = DemoController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HomeScreen(),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Center(
            child: Stack(
              children: [
               const Positioned(
                  bottom: 250,
                  left: 10,
                  right: 10,
                  child: DemoCard(
                text: "Medical\nHistory",
                imagePath: "assets/images/medical history.png",
                )
                ),
                  Positioned(
                    bottom: 45,
                    child: Container(
                      padding:const EdgeInsets.all(10),
                      child: DemoExplainCard1(
                        text: 'Here You Will Complete\nyour Medical History Form',
                        imagePath: "assets/images/demo.png",
                        onPress: () => demoControl.nextPress1(context)
                        ),
                    ),
                  )
              ],
            ),
          )
        ], 
      ),
    );
  }
}
