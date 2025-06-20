import 'dart:async';

import 'package:flutter/material.dart';
import 'package:room_connect/core/utils/app_assets.dart';
import 'package:room_connect/logic/splash_screen/splash_screen_two.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    timerActivate();
  }

  void timerActivate() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreenTwo()),
      ),
    );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                AppAssets.appLogo,
                width: 300,
              ),
            ),
          ),
          Image.asset(
            AppAssets.bottonDesign,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
