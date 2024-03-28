import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextFields extends StatelessWidget {
  final TextInputType keyboardType;
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final double fontSize;
  final double iconSize;

  AuthTextFields(
      //Constructor
      {required this.fontSize,
      required this.icon,
      required this.iconSize,
      required this.keyboardType,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.poppins(fontSize: fontSize),
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      keyboardType: keyboardType,
      textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(
        fillColor: Color(0xffe8dcfc),
        filled: true,
        prefixIcon: Icon(
          icon,
          size: iconSize,
          color: Color(0xFF280137),
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(),
        border: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
    );
  }
}
