import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/home_controller.dart';
import 'package:tash5esy_app/views/home_screen/widgets/home_card.dart';
import 'package:tash5esy_app/views/home_screen/widgets/home_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Align(
          alignment: Alignment.topCenter,
          child: HomeContainer(),
        ),
        Positioned(
            bottom: 250,
            left: 10,
            right: 10,
            child: HomeCard(
                text: "medical_history".tr(),
                imagePath: "assets/images/medical history.png",
                click: () {
                  _controller.navigateToMedicalHistory(context);
                })),
        Positioned(
            bottom: 150,
            left: 10,
            right: 10,
            child: HomeCard(
                text: "visits".tr(),
                imagePath: "assets/images/visits.png",
                click: () {
                  _controller.navigateToVisits(context);
                })),
        Positioned(
            bottom: 50,
            left: 10,
            right: 10,
            child: HomeCard(
              text: "documents".tr(),
              imagePath: "assets/images/documents.png",
              click: () {
                // _controller.navigateToDocuments(context);
              },
            )),
      ]),
    );
  }
}
