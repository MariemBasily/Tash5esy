import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class HelpCenterFAQScreen extends StatelessWidget {
  const HelpCenterFAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: Center(
          child: Text(
            'Help Center',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: AppColors.secondary,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'How Can We Help You?',
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColors.grey,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search....',
                      hintStyle: TextStyle(
                        color: AppColors.grey,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.secondary,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle FAQ button press
                  },
                  child: Text('FAQ'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle Contact Us button press
                  },
                  child: Text('Contact Us'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle FAQ button press
                  },
                  child: Text('FAQ'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle Contact Us button press
                  },
                  child: Text('Contact Us'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle FAQ button press
                  },
                  child: Text(
                    'FAQ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: AppColors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle Contact Us button press
                  },
                  child: Text('Contact Us'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
