import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:welcome_pages/onboarding_screen.dart';

import 'login.dart';
import 'signup.dart';

void main() {
  runApp(WelcomePage());
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vision App',
      theme: ThemeData(
        primaryColor: Color(0xff217a76),
      ),
      home: Onboarding_Scrren(),
    );
  }
}
