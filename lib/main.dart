import 'package:flutter/material.dart';
import 'package:practice_app/Views/Auth/login.dart';

void main() {
  runApp(Practice());
}

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Login(),
    );
  }
}
