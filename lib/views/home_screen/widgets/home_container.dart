import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/home_screen/widgets/search_bar.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
            ),
            height: 235,
          ),
          Positioned(
            top: 30,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  "👋🏻hello_ahmed".tr(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: "lato",
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "start".tr(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                    fontFamily: "lato",
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                const SimpleSearchBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
