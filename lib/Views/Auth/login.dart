import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter App",
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Text(
                      'Sign In \nto Alfons',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF280137),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        "assets/images/cat_logo.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ],
                ),
                Text(
                  'To connect with your Friends',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF280137),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              style: GoogleFonts.poppins(fontSize: 16),
              textInputAction: TextInputAction.none,
              obscureText: false,
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                fillColor: Color(0xffe8dcfc),
                filled: true,
                prefixIcon: Icon(
                  Icons.alternate_email,
                  size: 18,
                  color: Color(0xFF280137),
                ),
                hintText: "Email",
                hintStyle: GoogleFonts.poppins(),
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              style: GoogleFonts.poppins(fontSize: 16),
              textInputAction: TextInputAction.none,
              obscureText: true,
              autofocus: false,
              keyboardType: TextInputType.visiblePassword,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                fillColor: Color(0xffe8dcfc),
                filled: true,
                prefixIcon: Icon(
                  Icons.password,
                  size: 18,
                  color: Color(0xFF280137),
                ),
                hintText: "Password",
                hintStyle: GoogleFonts.poppins(),
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            RoundedLoadingButton(
              width: 2000,
              borderRadius: 5,
              color: Color(0xFF280137),
              controller: _btnController,
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
                      color: Colors.black45,
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
