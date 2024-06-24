import 'package:firebase_auth/components/body_text.dart';
import 'package:firebase_auth/components/custom_textfield.dart';
import 'package:firebase_auth/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            // Title
            CustomText(
              title: 'Login',
              fontSize: 40,
            ),

            // subtitle
            Text(
              'Hi, Welcome back 👋',
              style: GoogleFonts.outfit(
                textStyle: TextStyle(
                  fontSize: 17,
                  color: kTextLightGray,
                ),
              ),
            ),

            SizedBox(height: 30),

            //textfield
            CustomInputField(
              hintText: "E.g. dizzpy@admin.com",
              obscureText: false,
              controller: emailController,
            ),

            SizedBox(height: 15),

            CustomInputField(
              hintText: "Enter your password",
              obscureText: true,
              controller: passwordController,
            ),

            SizedBox(height: 15),

            // forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  title: 'Forgot password ?',
                  fontSize: 14,
                ),
              ],
            ),

            // login button
            SizedBox(height: 30),

            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: kBlack,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: GoogleFonts.outfit(
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            // to register
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not registered yet?',
                  style: GoogleFonts.outfit(
                    textStyle: TextStyle(
                      fontSize: 14,
                      color: kTextLightGray,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'Create an account',
                  style: GoogleFonts.outfit(
                    textStyle: TextStyle(
                      fontSize: 14,
                      color: kBlack,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
