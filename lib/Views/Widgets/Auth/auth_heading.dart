import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText; //Variables to change the fields of Login Page
  final String subText;
  final double subTextSize;
  final String logo;
  final double logoSize;
  final double mainTextSize;

  AuthHeading(
      //Constructor to call Variables
      {required this.mainTextSize,
      required this.logo,
      required this.logoSize,
      required this.mainText,
      required this.subText,
      required this.subTextSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
        ),
        Row(
          children: [
            Text(
              mainText,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: mainTextSize,
                    color: Color(0xFF280137),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: logoSize,
              height: logoSize,
              child: Image.asset(
                logo,
                filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
        Text(
          subText,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: subTextSize,
                color: Color(0xFF280137),
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
