import 'package:flutter/material.dart';
import 'package:login1/colors.dart';
import 'package:login1/home_screen.dart';
import 'package:login1/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: mainColor
      ),
      title: 'Login1',
      home:SplashScreen()
    );
  }
}

