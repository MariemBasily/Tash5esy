import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class AnotherNotification extends StatelessWidget {
  const AnotherNotification({super.key});

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
                      "15_April".tr(),
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
            "scheduled_appointment".tr(),
            style: TextStyle(
              fontFamily: "SourceSans3",
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.primary
            ),
            ),
            subtitle: Text(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              "lorem".tr(),
              style: const TextStyle(fontFamily: "SourceSans3", fontSize: 12),
              ),
              trailing: Column(
                 mainAxisSize: MainAxisSize.min,
                children: [
                   Text("45w".tr()),
                  Icon(Icons.check_box_outlined, color: AppColors.green,)
                ],
              ),
        )]);
  }
}