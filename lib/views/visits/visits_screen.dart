import 'package:flutter/material.dart';
import 'package:tash5esy_app/controllers/visit_button_controller.dart';
import 'package:tash5esy_app/views/visits/widgets/app_bar_widget.dart';
import 'package:tash5esy_app/views/visits/widgets/doctor_card.dart';

class VisitsScreen extends StatelessWidget {
 VisitsScreen({super.key});

  // @override

  final visitcontroller = VisitButtonController();

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: AppBarWidget(
            onPress: () => visitcontroller.onPressed(context),
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView(
            children: [
              DoctorCard(
                doctorName: "Dr. Chikanso Chima",
                specialization: "Oncologist",
                appointmentDate: "16/6",
                imageUrl: "assets/images/doctor 1.png",
                click: () => visitcontroller.onClick(context),
              ),
              DoctorCard(
                  doctorName: "Dr. Justin Biber",
                  specialization: "Neurologist",
                  appointmentDate: "8/8",
                  imageUrl: "assets/images/doctor 2.png",
                  click: () => visitcontroller.onClick(context),
              ),
              DoctorCard(
                  doctorName: "Dr. Maria Anna",
                  specialization: "Dermatologist",
                  appointmentDate: "1/5",
                  imageUrl: "assets/images/doctor 3.png",
                  click: () => visitcontroller.onClick(context)
              ),
              DoctorCard(
                  doctorName: "Dr. Push Puttichai",
                  specialization: "Surgeon",
                  appointmentDate: "11/11",
                  imageUrl: "assets/images/doctor 4.png",
                  click: () => visitcontroller.onClick(context)
              ),
              DoctorCard(
                  doctorName: "Dr. Krystal Jung",
                  specialization: "Cardiologist",
                  appointmentDate: "15/5",
                  imageUrl: "assets/images/doctor 5.png",
                  click: () => visitcontroller.onClick(context)
              )
            ],
          ),
        )
      ],
    ));
  }
}
