import 'package:firebase_auth/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.outfit(
        textStyle: TextStyle(
          fontSize: 14,
          color: Colors.black87,
        ),
      ),
      decoration: InputDecoration(
        hintText: 'Enter your text',
        hintStyle: GoogleFonts.outfit(
          textStyle: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: kTextLightGray,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: kTextLightGray,
          ),
        ),
      ),
    );
  }
}
