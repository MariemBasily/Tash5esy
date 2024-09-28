import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class SimpleSearchBar extends StatelessWidget {
  const SimpleSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(5),
        height: 40,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white
        ),
        child: Row(
          children: [
            Icon(Icons.search_rounded, color: AppColors.secondary, size: 20),
          const SizedBox(width: 8),
            Text(
              "search".tr(),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.grey
              ),
              )
          ],
        ),
      ),
    );
  }
}
