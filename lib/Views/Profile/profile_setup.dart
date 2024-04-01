import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/Views/Widgets/Auth/auth_text_fields.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class ProfileSetup extends StatefulWidget {
  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _profileSetupBtnController =
      RoundedLoadingButtonController();

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 150,
          width: 150,
          child: Image.asset(
            "assets/images/cat_logo.png",
            filterQuality: FilterQuality.high,
          ),
          padding: EdgeInsets.only(top: 15),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/profileSetup_bg.jpg"),
            filterQuality: FilterQuality.high,
            opacity: 0.4,
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                "Profile Setup",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Color(0xFF280137),
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 50),
            CircularProfileAvatar(
              "",
              radius: 70,
              backgroundColor: Color(0xFF280137),
              borderWidth: 3,
              initialsText: Text(
                "+",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              borderColor: Colors.black,
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AuthTextFields(
                  fontSize: 16,
                  icon: Icons.face,
                  iconSize: 18,
                  keyboardType: TextInputType.name,
                  hintText: "Full Name",
                  obscureText: false),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AuthTextFields(
                  fontSize: 16,
                  icon: Icons.abc,
                  iconSize: 18,
                  keyboardType: TextInputType.name,
                  hintText: "Username",
                  obscureText: false),
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: isMale ? Colors.cyan : Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 3,
                          offset: Offset(3, 4),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.male,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: !isMale ? Colors.deepPurple : Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 3,
                          offset: Offset(3, 4),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.female,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              width: 365,
              child: RoundedLoadingButton(
                width: MediaQuery.of(context).size.width,
                borderRadius: 5,
                color: Color(0xFF280137),
                controller: _profileSetupBtnController,
                onPressed: () {
                  print("Login Button is Pressed");
                },
                child: Text(
                  "Next",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
