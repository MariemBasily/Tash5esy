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
          child: const Text(
            textAlign: TextAlign.center,
            "Waiting For Confirmation",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
                fontFamily: "SourceSans3"),
          ),
        ));
  }
}
