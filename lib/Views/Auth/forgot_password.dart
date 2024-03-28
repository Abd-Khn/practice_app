import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/Views/Widgets/Auth/auth_heading.dart';

import '../Widgets/Auth/auth_text_fields.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alfons",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF280137),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: AuthHeading(
                  mainTextSize: 22,
                  logo: "",
                  logoSize: 0,
                  mainText: "Forgot Your Password ?",
                  subText: "",
                  subTextSize: 0),
            ),
            SizedBox(height: 20),
            Container(
              height: 250,
              width: 250,
              child: Image.asset(
                "assets/images/forgot_password.png",
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "To reset your password, type your registered email below. A reset link will be sent to that email address",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Color(0xff808080),
              ),
            ),
            SizedBox(height: 20),
            AuthTextFields(
              fontSize: 16,
              icon: Icons.alternate_email,
              iconSize: 18,
              keyboardType: TextInputType.emailAddress,
              hintText: "Email",
              obscureText: false,
            ),
          ],
        ),
      ),
    );
  }
}
