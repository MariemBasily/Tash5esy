import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/home_screen/home_screen.dart';
import 'package:tash5esy_app/views/notifications/notifications_screen.dart';
// import 'package:tash5esy_app/views/profile/profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const NotificationScreen(),
    // const ProfileScreen(),
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: const Icon(Icons.home_rounded), label: "home".tr()),
        BottomNavigationBarItem(
            icon: const Icon(Icons.notifications), label: "notifications".tr()),
        BottomNavigationBarItem(icon: const Icon(Icons.person), label: "profile".tr()),
      ],
      onTap: _onItemTap,
      currentIndex: _selectedIndex,
      selectedItemColor: AppColors.secondary,
      iconSize: 20,
      selectedLabelStyle: const TextStyle(
          fontFamily: "SourceSans3", fontWeight: FontWeight.w700, fontSize: 12),
      unselectedLabelStyle: const TextStyle(
          fontFamily: "SourceSans3", fontWeight: FontWeight.w700, fontSize: 10),
      backgroundColor: Colors.white,
    )
    );
  }
    
}
