import 'package:firebase_auth/components/custom_text.dart';
import 'package:firebase_auth/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  get passwordController => null;

  @override
  Widget build(BuildContext context) {
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
              title: 'admin@dezzpy.dev',
              fontSize: 17,
            ),

            Spacer(),

            GestureDetector(
              onTap: () {},
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
