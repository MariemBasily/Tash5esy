import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/home_screen/widgets/bottom_nav.dart';
import 'package:tash5esy_app/views/home_screen/widgets/home_card.dart';
import 'package:tash5esy_app/views/home_screen/widgets/home_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [Align(
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
          )
          ),
          Positioned(
          bottom: 150,
          left: 10,
          right: 10,
          child: HomeCard(
            text: "Visits",
            imagePath: "assets/images/visits.png",
          )
          ),
          Positioned(
          bottom: 50,
          left: 10,
          right: 10,
          child: HomeCard(
            text: "Documents",
            imagePath: "assets/images/documents.png",
          )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child:  BottomNavigation(),
          )
        ]
      ),
    );
  }
}
