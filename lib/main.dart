import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:tash5esy_app/controller_screen.dart';
import 'package:tash5esy_app/models/splash_model.dart';
import 'package:tash5esy_app/views/home_screen/home_screen.dart';
import 'package:tash5esy_app/views/lab_results/lab_result_screen.dart';
import 'package:tash5esy_app/views/login/login_screen.dart';
import 'package:tash5esy_app/views/nid_verification_1/nid_verification_screen_1.dart';
import 'package:tash5esy_app/views/splash/splash_screen.dart';
import 'package:tash5esy_app/views/get_started/get_started_screen.dart';
import 'package:tash5esy_app/views/signup/signup_screen.dart';
import 'package:tash5esy_app/views/verifiy_account/verifiy_account_screen.dart'; 
import 'package:tash5esy_app/views/x-ray_results/xray_results_screen.dart';


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
      title: 'Tash5esy App',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: SplashScreenView(
        model: SplashModel(title: 'Tash5esy App'),
      ),
      routes: {
        '/get_started': (context) => GetStartedScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => NewAccountScreen(),
        '/phone_verification': (context) => PhoneVerificationScreen(phoneNumber: '',),
        '/controller_screen': (context) => ControllerScreen(), 
        '/nid_verification1_screen': (context) => IdentityVerificationScreen(), 
        '/labResults': (context) => LabResultsScreen(), 
        '/xrayResults': (context) => XrayResultsScreen(),
      },
    );
  }
}
