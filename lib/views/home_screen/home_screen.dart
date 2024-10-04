import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/home_controller.dart';
import 'package:tash5esy_app/views/home_screen/widgets/home_card.dart';
import 'package:tash5esy_app/views/home_screen/widgets/home_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    final screenHeight= MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(children: [
      const Align(
        alignment: Alignment.topCenter,
        child: HomeBar(),
      ),
      Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeCard(
                  text: "medical_history".tr(),
                  imagePath: "assets/images/medical history.png",
                  click: () {
                    _controller.navigateToMedicalHistory(context);
                  }),
               SizedBox(
                height: screenHeight * 0.02
              ),
              HomeCard(
                  text: "appointments".tr(),
                  imagePath: "assets/images/visits.png",
                  click: () {
                    _controller.navigateToAppointments(context);
                  }),
               SizedBox(
                height: screenHeight * 0.02
              ),
              HomeCard(
                text: "medical_documents".tr(),
                imagePath: "assets/images/documents.png",
                click: () {
                  _controller.navigateToDocuments(context);
                },
              ),
               SizedBox(height: screenHeight * 0.02),
              HomeCard(
                text: "Medical Insurance",
                imagePath: "assets/images/documents.png",
                click: () {},
              )
            ],
          ),
        ),
      )
    ]));
    // Column(
    //   children: [
    //     ListView(
    //       children: [
    // Positioned(
    //     // bottom: 300,
    //     left: 10,
    //     right: 10,
    //     child: HomeCard(
    //         text: "medical_history".tr(),
    //         imagePath: "assets/images/medical history.png",
    //         click: () {
    //           _controller.navigateToMedicalHistory(context);
    //         })),

    // Positioned(
    //     // bottom: 200,
    //     left: 10,
    //     right: 10,
    //     child: HomeCard(
    //         text: "appointments".tr(),
    //         imagePath: "assets/images/visits.png",
    //         click: () {
    //           _controller.navigateToAppointments(context);
    //         })),

    // Positioned(
    //     // bottom: 100,
    //     left: 10,
    //     right: 10,
    //     child: HomeCard(
    //       text: "medical_documents".tr(),
    //       imagePath: "assets/images/documents.png",
    //       click: () {
    //         _controller.navigateToDocuments(context);
    //       },
    //     )),
    // Positioned(
    //     // bottom: -1,
    //     left: 10,
    //     right: 10,
    //     child: HomeCard(
    //       text: "Medical Insurance",
    //       imagePath: "assets/images/documents.png",
    //       click: () {},
    //     )),
    //   ],
    // )
    //       ],
    //     )
    // SizedBox(height: 15),
  }
}
