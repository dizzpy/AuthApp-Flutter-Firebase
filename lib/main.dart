// import 'package:firebase_auth/pages/login_page.dart';
import 'package:firebase_auth/pages/home_register.dart';
import 'package:firebase_auth/pages/login_page.dart';
import 'package:firebase_auth/pages/register_page.dart';
// import 'package:firebase_auth/pages/login_page.dart';
// import 'package:firebase_auth/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
