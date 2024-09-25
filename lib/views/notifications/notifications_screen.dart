import 'package:flutter/material.dart';
import 'package:tash5esy_app/views/notifications/widgets/another_notification.dart';
import 'package:tash5esy_app/views/notifications/widgets/noti_bar_widget.dart';
import 'package:tash5esy_app/views/notifications/widgets/notification-yesterday.dart';
import 'package:tash5esy_app/views/notifications/widgets/notification_today_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          const NotiBarWidget(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              scrollDirection: Axis.vertical,
              children: const [
                NotificationTodayWidget(),
                NotificationYestedayWidget(),
                AnotherNotification()
              ],
            ),
          ),
        ],
      )
    );
  }
}
