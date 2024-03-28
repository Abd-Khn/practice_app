import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/Views/Widgets/Auth/auth_text_fields.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

import '../Widgets/Auth/auth_heading.dart';

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _loginBtnController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alfons",
          style: GoogleFonts.poppins(
            textStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: const Color(0xFF280137),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            AuthHeading(
              mainTextSize: 25,
              logo: "assets/images/cat_logo.png",
              logoSize: 100,
              mainText: 'Sign In \nto Alfons',
              subText: 'To connect with your Friends',
              subTextSize: 20,
            ), //Object of AuthHeading Class is called for heading of Sign In Page
            SizedBox(
              height: 50,
            ),
            AuthTextFields(
                fontSize: 16,
                icon: Icons.alternate_email,
                iconSize: 18,
                keyboardType: TextInputType.emailAddress,
                hintText: "Email",
                obscureText: false), //Object of AuthTextFields
            SizedBox(
              height: 25,
            ),
            AuthTextFields(
                fontSize: 16,
                icon: Icons.password,
                iconSize: 18,
                keyboardType: TextInputType.visiblePassword,
                hintText: "Password",
                obscureText: true),
            SizedBox(
              height: 50,
            ),
            RoundedLoadingButton(
              width: 2000,
              borderRadius: 5,
              color: Color(0xFF280137),
              controller: _loginBtnController,
              onPressed: () {
                print("Login Button is Pressed");
              },
              child: Text(
                "Login",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Forgot Password?",
              style: GoogleFonts.poppins(
                  color: Colors.red, fontSize: 13, letterSpacing: 1),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.poppins(
                      color: Color(0xff808080),
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
                Text(
                  "  Sign Up",
                  style: GoogleFonts.poppins(
                      color: Color(0xFF280137),
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
