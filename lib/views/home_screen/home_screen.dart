import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/home_controller.dart';
import 'package:tash5esy_app/core/components/bottom_navigation.dart';
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
                text: "Medical\nHistory",
                imagePath: "assets/images/medical history.png",
                click: () {
                  _controller.navigateToMedicalHistory(context);
                })),
        Positioned(
            bottom: 150,
            left: 10,
            right: 10,
            child: HomeCard(
                text: "Visits",
                imagePath: "assets/images/visits.png",
                click: () {
                  _controller.navigateToVisits(context);
                })),
        Positioned(
            bottom: 50,
            left: 10,
            right: 10,
            child: HomeCard(
              text: "Documents",
              imagePath: "assets/images/documents.png",
              click: () {
                // _controller.navigateToDocuments(context);
              },
            )),
        const Align(
          alignment: Alignment.bottomCenter,
          child: BottomNavigation(),
        )
      ]),
    );
  }
}
