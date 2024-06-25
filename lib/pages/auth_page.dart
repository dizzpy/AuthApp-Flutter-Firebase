import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauth/const/colors.dart';
import 'package:firebaseauth/pages/home_register.dart';
import 'package:firebaseauth/pages/login_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: kTextLightGray,
              ),
            );
          } else if (snapshot.hasData) {
            return HomePage();
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Something went wrong'),
            );
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
