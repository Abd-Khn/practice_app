import 'package:flutter/material.dart';
import 'package:practice_app/Views/Auth/register.dart';

void main() {
  runApp(Alfons());
}

class Alfons extends StatelessWidget {
  const Alfons({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alfons',
      home: Register(),
    );
  }
}
