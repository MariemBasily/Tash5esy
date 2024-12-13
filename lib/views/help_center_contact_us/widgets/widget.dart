import 'package:flutter/material.dart';
import 'package:tash5esy_app/core/style/colors.dart';
import 'package:tash5esy_app/views/help_center_contact_us/contact_us_screen.dart';
import 'package:tash5esy_app/views/help_center_faq/help_center_faq_screen.dart';

class AppBarWithSearch extends StatelessWidget {
  const AppBarWithSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: const BoxDecoration(
        color: AppColors.primary,
      ),
      margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBar(
            backgroundColor: AppColors.primary,
            title: const Text('Help Center'),
            titleTextStyle: const TextStyle(
              fontFamily: "lato",
              color: AppColors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'How Can We Help You?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(157, 255, 255, 255),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search, color: AppColors.primary),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//TabButtons Widget
class TabButtons extends StatelessWidget {
  const TabButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTabButton('FAQ', true, context),
        const SizedBox(width: 15),
        _buildTabButton('Contact Us', false, context),
      ],
    );
  }

  Widget _buildTabButton(String label, bool isActive, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (label == 'Contact Us') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const HelpCenterFaqScreen()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ContactUsScreen()),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive ? AppColors.primary : Colors.blue[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// Category Chips Widget
class CategoryChips extends StatelessWidget {
  const CategoryChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _ChipItem(label: 'Popular Topic', style: (color: AppColors.primary)),
        SizedBox(width: 8),
        _ChipItem2(label: 'General', style: (color: AppColors.secondary)),
        SizedBox(width: 8),
        _ChipItem2(label: 'Services', style: (color: AppColors.secondary))
      ],
    );
  }
}

class _ChipItem extends StatelessWidget {
  final String label;

  const _ChipItem({Key? key, required this.label, required style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(color: AppColors.white),
      ),
      backgroundColor: AppColors.primary,
    );
  }
}

class _ChipItem2 extends StatelessWidget {
  final String label;

  const _ChipItem2({Key? key, required this.label, required style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(color: AppColors.white),
      ),
      backgroundColor: AppColors.secondary,
    );
  }
}

// FAQ List Widget
class FAQList extends StatelessWidget {
  const FAQList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return const FAQItem();
      },
    );
  }
}

// FAQ Item Widget
class FAQItem extends StatelessWidget {
  const FAQItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      color: Color.fromARGB(255, 199, 227, 247),
      child: ExpansionTile(
        title: Text('Lorem ipsum dolor sit amet?'),
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem.',
            ),
          ),
        ],
      ),
    );
  }
}
