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
    return BottomNavigationBar(items: <BottomNavigationBarItem>[
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
    selectedLabelStyle: TextStyle(fontFamily: "SourceCodePro", fontWeight: FontWeight.w700, fontSize: 12),
    unselectedLabelStyle: TextStyle(fontFamily: "SourceCodePro", fontWeight: FontWeight.w700, fontSize: 10),
    backgroundColor: Colors.white,
    
    );
  }
}
