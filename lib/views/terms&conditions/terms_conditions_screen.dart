import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms & Conditions',
          style: TextStyle(
            color: AppColors.secondary,
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
        child: ListView(
          children: [
            Text(
              'Last Update: 14/08/2024',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. '
              'Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam. '
              'Fusce a scelerisque neque, sed accumsan metus. '
              'Nunc auctor tortor in dolor luctus, quis euismod urna tincidunt. '
              'Aenean arcu metus, bibendum at rhoncus at, volutpat ut lacus. '
              'Morbi pellentesque malesuada eros semper ultrices. '
              'Vestibulum lobortis enim vel neque auctor, a ultrices ex placerat. '
              'Mauris ut lacinia justo, sed suscipit tortor. '
              'Nam egestas nulla posuere neque tincidunt porta.',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. '
              'Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam. '
              'Fusce a scelerisque neque, sed accumsan metus. '
              'Nunc auctor tortor in dolor luctus, quis euismod urna tincidunt. '
              'Aenean arcu metus, bibendum at rhoncus at, volutpat ut lacus. '
              'Morbi pellentesque malesuada eros semper ultrices. '
              'Vestibulum lobortis enim vel neque auctor, a ultrices ex placerat. '
              'Mauris ut lacinia justo, sed suscipit tortor. '
              'Nam egestas nulla posuere neque tincidunt porta.',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. '
              'Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam. '
              'Fusce a scelerisque neque, sed accumsan metus. '
              'Nunc auctor tortor in dolor luctus, quis euismod urna tincidunt. '
              'Aenean arcu metus, bibendum at rhoncus at, volutpat ut lacus. '
              'Morbi pellentesque malesuada eros semper ultrices. '
              'Vestibulum lobortis enim vel neque auctor, a ultrices ex placerat. '
              'Mauris ut lacinia justo, sed suscipit tortor. '
              'Nam egestas nulla posuere neque tincidunt porta.',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '4. Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. '
              'Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam. '
              'Fusce a scelerisque neque, sed accumsan metus. '
              'Nunc auctor tortor in dolor luctus, quis euismod urna tincidunt. '
              'Aenean arcu metus, bibendum at rhoncus at, volutpat ut lacus. '
              'Morbi pellentesque malesuada eros semper ultrices. '
              'Vestibulum lobortis enim vel neque auctor, a ultrices ex placerat. '
              'Mauris ut lacinia justo, sed suscipit tortor. '
              'Nam egestas nulla posuere neque tincidunt porta.',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
