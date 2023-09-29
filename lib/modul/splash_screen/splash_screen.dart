import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/Layout/Home%20Layout/HomeLayout.dart';

class splashScreen extends StatelessWidget {
  static const routeName = 'splash';

  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        'assets/image/splash_background.png',
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
