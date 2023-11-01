import 'package:crafty_furniture/modules/home_layout.dart';
import 'package:crafty_furniture/modules/authentication/login_screen.dart';
import 'package:crafty_furniture/modules/authentication/sign_up_screen.dart';
import 'package:crafty_furniture/modules/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'layouts/group_layout.dart';
import 'modules/detail.dart';
import 'modules/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white,
        //   primary: Color(0xff007575)
        ),
        useMaterial3: true,
      ),

      home: SplashScreen(),
    );
  }
}
