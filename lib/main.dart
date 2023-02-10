import 'package:firebase_authentications/screens/login_email_password_screen.dart';
import 'package:firebase_authentications/screens/login_methods_screen.dart';
import 'package:firebase_authentications/screens/phone_screen.dart';
import 'package:firebase_authentications/screens/signup_email_password_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase Auth Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromRGBO(16, 13, 34, 1),
      ),
      home: const LoginMethodsScreen(),

      //*** routes ->
      routes: {
        EmailPasswordSignup.routeName: (context) => const EmailPasswordSignup(),
        EmailPasswordLogin.routeName: (context) => const EmailPasswordLogin(),
        PhoneScreen.routeName: (context) => const PhoneScreen(),
      },
    );
  }
}
