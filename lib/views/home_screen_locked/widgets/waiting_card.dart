import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WaitingCard extends StatelessWidget {
  final VoidCallback click;

  const WaitingCard({super.key, required this.click});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => click(), // Click Now For UI Only --- in the Future it must go automatically aftr verifying == No Need For Controller Here Now
        child: Container(
          height: 50,
          width: 180,
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.9)),
          child: Text(
            textAlign: TextAlign.center,
            "waiting".tr(),
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
                fontFamily: "SourceSans3"),
          ),
        ));
  }
}
