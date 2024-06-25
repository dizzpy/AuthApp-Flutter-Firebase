import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauth/components/custom_text.dart';
import 'package:firebaseauth/components/custom_textfield.dart';
import 'package:firebaseauth/const/colors.dart';
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
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> registerUser(BuildContext context) async {
    try {
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        Navigator.pushNamed(context, '/home');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Registration Successful!'),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Passwords do not match'),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: ' + e.toString()),
        ),
      );
    } finally {
      emailController.clear();
      passwordController.clear();
      confirmPasswordController.clear();
    }
  }

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

              // Subtitle
              CustomText(
                title: 'Let’s create your account 🤘',
                fontSize: 17,
              ),

              SizedBox(height: 30),

              // Email TextField
              CustomInputField(
                title: 'Email Address',
                hintText: "E.g. dizzpy@admin.com",
                obscureText: false,
                controller: emailController,
              ),

              SizedBox(height: 15),

              // Password TextField
              CustomInputField(
                title: 'Password',
                hintText: "Enter your password",
                obscureText: true,
                controller: passwordController,
              ),

              SizedBox(height: 15),

              // Confirm Password TextField
              CustomInputField(
                title: 'Confirm Password',
                hintText: "Re-enter your password",
                obscureText: true,
                controller: confirmPasswordController,
              ),

              SizedBox(height: 15),

              // Register Button
              GestureDetector(
                onTap: () {
                  registerUser(context);
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

              SizedBox(height: 30),

              // Navigate to Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
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

              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
