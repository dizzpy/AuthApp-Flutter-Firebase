import 'package:firebase_auth/components/custom_text.dart';
import 'package:firebase_auth/components/custom_textfield.dart';
import 'package:firebase_auth/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              // Title
              CustomText(
                title: 'Register',
                fontSize: 40,
              ),

              // subtitle
              CustomText(
                title: 'Let’s create your account 🤘',
                fontSize: 17,
              ),

              SizedBox(height: 30),

              //textfield
              CustomInputField(
                title: 'Email Adress',
                hintText: "E.g. dizzpy@admin.com",
                obscureText: false,
                controller: emailController,
              ),

              SizedBox(height: 15),

              CustomInputField(
                title: 'Password',
                hintText: "Enter your password",
                obscureText: true,
                controller: passwordController,
              ),

              SizedBox(height: 15),
              CustomInputField(
                title: 'Cofirm Password',
                hintText: "Re-enter your password",
                obscureText: true,
                controller: confirmPasswordController,
              ),
              SizedBox(height: 15),

              // login button
              SizedBox(height: 30),

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
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
                      'Register',
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
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account ?',
                    style: GoogleFonts.outfit(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: kTextLightGray,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.outfit(
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: kBlack,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
