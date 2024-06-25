import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauth/components/custom_text.dart';
import 'package:firebaseauth/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void logoutUser(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushNamed(context, '/login');
  }

  Widget build(BuildContext context) {
    User? currentUser = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            // Title
            CustomText(
              title: 'Hey ✌️',
              fontSize: 40,
            ),

            // subtitle
            CustomText(
              title: currentUser?.email ?? 'No user logged in',
              fontSize: 17,
            ),

            Spacer(),

            GestureDetector(
              onTap: () {
                logoutUser(context);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: kBlack,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    'Logout',
                    style: GoogleFonts.outfit(
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // to register
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
