import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/visit_button_controller.dart';
import 'package:tash5esy_app/views/visit_details/widgets/app_bar_widget2.dart';
import 'package:tash5esy_app/views/visit_details/widgets/description_card.dart';
import 'package:tash5esy_app/views/visit_details/widgets/next_visit_card.dart';

class VisitsDetailsScreen extends StatelessWidget {
  VisitsDetailsScreen({super.key});

  // @override
  final visitcontroller = VisitButtonController();

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: AppBarWidget2(
            onPress: () => visitcontroller.onPress(context),
          ),
        ),
      const SizedBox(height: 10),
        DescriptionCard(),
        const SizedBox(height: 20),
        NextVisitCard()
      ]
        )
    );
  }
}