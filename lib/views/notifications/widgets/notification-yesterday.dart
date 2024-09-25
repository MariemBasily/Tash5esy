import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class NotificationYestedayWidget extends StatelessWidget {
  const NotificationYestedayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
              ListTile(
                  leading: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(100, 10, 111, 183),
                        borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.rectangle),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Yesterday",
                      style: TextStyle(
                          fontFamily: "SourceSans3",
                          fontSize: 18,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500
                          ),
                    )),
        ),
        ListTile(
          leading: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
          ),
          const Icon(Icons.calendar_month_outlined,  color: Colors.white),
        ]),
          title: Text(
            "Scheduled appointment",
            style: TextStyle(
              fontFamily: "SourceSans3",
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.primary
            ),
            ),
            subtitle: const Text(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TextStyle(fontFamily: "SourceSans3", fontSize: 12),
              ),
              trailing: Column(
                 mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("1d"),
                  Icon(Icons.check_box_outlined, color: AppColors.green,)
                ],
              ),
        )]);
  }
}