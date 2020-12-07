import 'package:flutter/material.dart';
import 'package:flutterui/splash.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0XFFcacfcc),
      ),
      home: Splash(),
    );
  }
}
