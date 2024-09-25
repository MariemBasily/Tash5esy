import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class NotiBarWidget extends StatelessWidget {
  const NotiBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       ListTile(
          contentPadding: const EdgeInsets.all(15),
          leading: Text(
            textAlign: TextAlign.center,
            "Notifications",
            style: TextStyle(
                fontFamily: "SourceSans3",
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
                fontSize: 20),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Container(
                  width: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(100, 10, 111, 183),
                      borderRadius: BorderRadius.circular(15),
                      shape: BoxShape.rectangle),
                  child: Text(
                    textAlign: TextAlign.center,
                    "News",
                    style: TextStyle(
                        fontFamily: "SourceSans3",
                        fontSize: 15,
                        color: AppColors.primary),
                  ))),
      )  ]  );
  }}