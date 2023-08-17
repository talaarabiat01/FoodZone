import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_zoon/buttom_navigation_bar_screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:5),() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/splash_img.png'),
          ),
        ),
        child: Center(
          child: Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                'Food Zone',
                style: TextStyle(
                  fontSize: 50,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 15
                    ..color = Colors.black,
                ),
              ),
              // Solid text as fill.
              const Text(
                'Food Zone',
                style: TextStyle(
                  fontSize: 50,
                  color: Color(0xFFB31312),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}