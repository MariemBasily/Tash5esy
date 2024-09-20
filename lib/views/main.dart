import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tash5esy_app/views/demo/demo_screen.dart';
import 'package:tash5esy_app/views/home_screen/home_screen.dart';
import 'package:tash5esy_app/views/home_screen_locked/home_screen_locked.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translation',
      fallbackLocale: Locale('en'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: DemoScreen(),
    );
  }
}
