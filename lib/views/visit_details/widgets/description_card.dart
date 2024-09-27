import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 30, left: 10),
          decoration: BoxDecoration(
             shape:BoxShape.rectangle,
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
             ]
          ),
          height: 46,
          child: ListTile(
            leading: const Icon(Icons.favorite, color: Colors.white,),
            title: Text(
              "description2".tr(),
              style: const TextStyle(
                fontFamily: "SourceSans3",
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
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
            style: const TextStyle(fontFamily: "SourceSans3", fontSize: 13),
          ),
          ),]
    );
  }
}
