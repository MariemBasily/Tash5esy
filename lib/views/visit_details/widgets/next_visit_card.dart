import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class NextVisitCard extends StatelessWidget {
  const NextVisitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 80, left: 10),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(60),
              color: AppColors.primary,
              gradient: const LinearGradient(
                colors: <Color>[
                  Color.fromARGB(255, 10, 111, 183),
                  Color.fromARGB(255, 3, 64, 120)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 2,
                  offset: const Offset(0, 3),
                )
              ]),
          height: 46,
          child: ListTile(
            leading: const Icon(
              Icons.calendar_month_outlined,
              color: Colors.white,
            ),
            title: Text(
              "next_visit".tr(),
              style: const TextStyle(
                  fontFamily: "lato",
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            trailing: Text(
              "16/6",
              style: TextStyle(
                  fontFamily: "lato",
                  fontSize: 12,
                  color: AppColors.grey),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          margin: const EdgeInsets.only(right: 200, left: 10),
          padding: EdgeInsets.all(10),
          height: 40,
          width: 85,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 233, 246, 254),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25)
          ),
          child: Center(child: Text(textAlign: TextAlign.center,"Notes", style: TextStyle(color: AppColors.primary, fontFamily: "lato", fontSize: 16, fontWeight: FontWeight.w600))),
        ),
      const SizedBox(height: 8),
        Container(
          padding: EdgeInsets.all(8),
          height: 120,
          width: 340,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(45, 10, 111, 183)
          ),
          child: Text(
            "lorem".tr(),
            style: const TextStyle(fontFamily: "lato", fontSize: 13),
          ),
        ),
          const SizedBox(height: 22),
        Text(
          "see_you_soon".tr(),
          style: TextStyle(
            fontFamily: "lato",
            fontSize: 20,
            color: AppColors.primary,
            fontWeight: FontWeight.w700
          ),
          )
      ],
    );
  }
}
