import 'package:flutter/material.dart';

class ProfileScreenCircleavatar extends StatelessWidget {
  const ProfileScreenCircleavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets\images\avatar.png'), // Add your avatar image here
          );
  }
}