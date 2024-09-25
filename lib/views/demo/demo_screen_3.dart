import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/demo_controller.dart';
import 'package:tash5esy_app/views/demo/widgets/demo_card.dart';
import 'package:tash5esy_app/views/demo/widgets/demo_explain_card3.dart';
import 'package:tash5esy_app/views/home_screen/home_screen.dart';


class DemoScreen3 extends StatelessWidget {
  DemoScreen3({super.key});

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
              Positioned(
                  bottom: 50,
                  left: 10,
                  right: 10,
                child: DemoCard(text: "documents".tr(), imagePath: "assets/images/documents.png")
              ),
              Positioned(
                bottom: 190,
                child: DemoExplainCard3(
                  text: "demo3".tr(),
                  imagePath: "assets/images/demo3.png",
                  onPress: () => demoControl.startPress(context)
                    )
                )
            ],
          ),
        )
      ]
    );
  }
}
