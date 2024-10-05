import 'package:flutter/material.dart';

import '../../core/style/colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy & Policy',
          style: TextStyle(
            color: AppColors.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.secondary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last Update: 14/08/2024',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  "Lorem'psum color sit amet, consectetur adipiscing edit. "
                  'Praesent pellentesque congue lorem, vel inciount tortor placerat a. '
                  'Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam. '
                  'Fusce a scelerisque neque, sed accumsan metus. '
                  'Nunc auctor tortor in dolor luctus, quis euismod urna tincidunt. '
                  'Aenean arcu metus, bibendum at rhoncus at, volutpat ut lacus. '
                  'Morbi pellentesque malesuada eros semper ultrices. '
                  'Vestibulum lobortis enim vel neque auctor, a ultrices ex placerat. '
                  'Mauris ut lacinia justo, sed suscipit tortor. '
                  'Nam egestas nulla posuere neque tincidunt porta.',
                  style: TextStyle(fontSize: 16, color: AppColors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
