import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new , color: AppColors.primary,),
          onPressed: () {
          },
        ),
        title: const Text('Privacy & Policy' ,style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: AppColors.primary,
          fontFamily: 'lato',
          
        ),), centerTitle: true,
      ),
      body: const PrivacyPolicyContent(),
    );
  }
}
class PrivacyPolicyContent extends StatelessWidget {
  const PrivacyPolicyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LastUpdatedDate(),
          SizedBox(height: 16),
          PolicyDetails(),
        ],
      ),
    );
  }
}

class LastUpdatedDate extends StatelessWidget {
  const LastUpdatedDate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Last Update: 14/08/2024',
      style: TextStyle(
        fontSize: 16,
        color: AppColors.secondary,
        fontWeight: FontWeight.bold,
        fontFamily: 'lato',
      ),
    );
  }
}
class PolicyDetails extends StatelessWidget {
  const PolicyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, '
      'vel tincidunt tortor placerat a. Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam. '
      'Fusce a scelerisque neque, sed accumsan metus.\n\n'
      'Nunc auctor tortor in dolor luctus, quis euismod urna tincidunt. Aenean arcu metus, bibendum at '
      'rhoncus at, volutpat ut lacus. Morbi pellentesque malesuada eros semper ultrices. Vestibulum '
      'lobortis enim vel neque auctor, a ultrices ex placerat. Mauris ut lacinia justo, sed suscipit tortor. '
      'Nam egestas nulla posuere neque tincidunt porta.',
      style: TextStyle(fontSize: 16, color: AppColors.grey2,fontFamily: 'lato',),
    );
  }
}