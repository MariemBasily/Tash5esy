import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';

class ContactOptionsList extends StatelessWidget {
  const ContactOptionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ContactOption(
            icon: Icons.headset_mic,
            label: 'Customer Service',
          ),
          ContactOption(
            icon: Icons.language,
            label: 'Website',
          ),
          ContactOption(
            icon: Icons.phone,
            label: 'Whatsapp',
          ),
          ContactOption(
            icon: Icons.facebook,
            label: 'Facebook',
          ),
          ContactOption(
            icon: Icons.camera_alt,
            label: 'Instagram',
          ),
        ],
      ),
    );
  }
}

class ContactOption extends StatelessWidget {
  final IconData icon;
  final String label;

  const ContactOption({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue[100],
          child: Icon(
            icon,
            color: AppColors.primary,
          ),
        ),
        title: Text(
          label,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.primary),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.primary,
          size: 16,
        ),
        onTap: () {
          // Handle tap functionality here 
        },
      ),
    );
  }
}
