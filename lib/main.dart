import 'package:flutter/material.dart';
import 'package:login_ui/screens/login_screen.dart';
import 'package:login_ui/screens/signup_screen.dart';
import 'package:login_ui/screens/welcome_screen.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        "/welcome": (context)=> WelcomeScreen(),
        "/login": (context)=> LoginScreen(),
        "/signup": (context)=> SignUpScreen(),
      },
    );
  }
}
