import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Image.asset(
          'assets/images/get started.png',
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
