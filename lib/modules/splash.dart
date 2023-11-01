import 'dart:async';

import 'package:crafty_furniture/modules/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context)=>OnBoardingScreen()),
                    (route) => false
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
     body: Container(
       child: const Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage( 'assets/images/Logo.png')),
            ],
         ),
       ),
     )
    );
  }
}
