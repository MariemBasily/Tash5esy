import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget{
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.only(bottomLeft: 20.0, bottomRight: 20)
              ),
            )
        ],
      ),
    );
  }
  
}