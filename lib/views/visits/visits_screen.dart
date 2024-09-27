import 'package:easy_localization/easy_localization.dart';
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
        Expanded(
          child: ListView(
            children: [
              DoctorCard(
                doctorName: "doctor1".tr(),
                specialization: "oncologist".tr(),
                appointmentDate: "16/6",
                imageUrl: "assets/images/doctor 1.png",
                click: () => visitcontroller.onClick(context),
              ),
              DoctorCard(
                  doctorName: "doctor2".tr(),
                  specialization: "neurologist".tr(),
                  appointmentDate: "8/8",
                  imageUrl: "assets/images/doctor 2.png",
                  click: () => visitcontroller.onClick(context),
              ),
              DoctorCard(
                  doctorName: "doctor3".tr(),
                  specialization: "dermatologist".tr(),
                  appointmentDate: "1/5",
                  imageUrl: "assets/images/doctor 3.png",
                  click: () => visitcontroller.onClick(context)
              ),
              DoctorCard(
                  doctorName: "doctor4".tr(),
                  specialization: "surgeon".tr(),
                  appointmentDate: "11/11",
                  imageUrl: "assets/images/doctor 4.png",
                  click: () => visitcontroller.onClick(context)
              ),
              DoctorCard(
                  doctorName: "doctor5".tr(),
                  specialization: "cardiologist".tr(),
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
