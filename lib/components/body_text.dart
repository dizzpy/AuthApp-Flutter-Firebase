import 'package:firebase_auth/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBodyText extends StatelessWidget {
  const MyBodyText({
    required this.title,
    required this.fontSize,
  });

  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.outfit(
        textStyle: TextStyle(
          fontSize: fontSize,
          color: kTextLightGray,
        ),
      ),
    );
  }
}
