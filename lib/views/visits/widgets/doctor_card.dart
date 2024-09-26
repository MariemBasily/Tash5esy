import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class DoctorCard extends StatelessWidget {
  
  final String doctorName;
  final String specialization;
  final String appointmentDate;
  final String imageUrl;
  final VoidCallback click;

  const DoctorCard(
      {super.key,
      required this.doctorName,
      required this.specialization,
      required this.appointmentDate,
      required this.imageUrl,
      required this.click
      });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                height: 90,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorName,
                  style: TextStyle(
                      fontFamily: "SourceSans3",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: AppColors.primary),
                ),
                Text(
                  specialization,
                  style: TextStyle(
                      fontFamily: "SourceSans3",
                      fontSize: 13,
                      color: AppColors.grey2),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.calendar_month_outlined,
                        color: AppColors.primary, size: 20),
                    const SizedBox(width: 5),
                    Text(
                      appointmentDate,
                      style: TextStyle(
                          fontFamily: "SourceSans3",
                          fontSize: 13,
                          color: AppColors.grey2),
                    ),
                    const SizedBox(width: 26),
                    ElevatedButton(
                        onPressed: click,
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          backgroundColor: const Color.fromARGB(45, 10, 111, 183),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 0,
                          minimumSize: const Size(40, 20),
                        ),
                        child: Text(
                          "details".tr(),
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "SourceSans3",
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary),
                        ))
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
