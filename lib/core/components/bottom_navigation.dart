import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded), label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(Icons.notifications), label: "Notifications"),
      BottomNavigationBarItem(
          icon: Icon(Icons.person), label: "Profile"),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: AppColors.secondary,
    onTap: _onItemTap,
    iconSize: 20,
    selectedLabelStyle: const TextStyle(fontFamily: "SourceSans3", fontWeight: FontWeight.w700, fontSize: 12),
    unselectedLabelStyle: const TextStyle(fontFamily: "SourceSans3", fontWeight: FontWeight.w700, fontSize: 10),
    backgroundColor: Colors.white,
    
    );
  }
}
