import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/admin_verifiy/admin_verifiy_screen.dart';
import 'package:tash5esy_app/views/home_screen/home_screen.dart';
import 'package:tash5esy_app/views/home_screen_locked/widgets/waiting_card.dart';

class HomeScreenLocked extends StatelessWidget {
  const HomeScreenLocked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HomeScreen(),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          SizedBox(height: 5),
          Center(child: WaitingCard(click: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AdminVerifiyScreen()));
          }))
        ],
      ),
    );
  }
}
