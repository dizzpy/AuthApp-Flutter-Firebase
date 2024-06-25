import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseauth/pages/auth_page.dart';
import 'package:firebaseauth/pages/home_register.dart';
import 'package:firebaseauth/pages/login_page.dart';
import 'package:firebaseauth/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        '/authPage': (context) => AuthPage(),
      },
    );
  }
}
