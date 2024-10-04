import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/edit_profile/widgets/custom_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF034078),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              children: [
                const CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xFF034078),
                  child: Icon(Icons.edit_outlined),
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets\images\avatar.png',
                  ), // Replace with your image asset
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomTextField(),
          ],
        ),
      ),
    );
  }
}
