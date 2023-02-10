import 'package:firebase_authentications/screens/phone_screen.dart';
import 'package:firebase_authentications/screens/signup_email_password_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import 'login_email_password_screen.dart';

class LoginMethodsScreen extends StatefulWidget {
  const LoginMethodsScreen({Key? key}) : super(key: key);

  @override
  State<LoginMethodsScreen> createState() => _LoginMethodsScreenState();
}

class _LoginMethodsScreenState extends State<LoginMethodsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 13, 34, 1),
      appBar: AppBar(
        title: const Text('Choose a Auth method'),
        backgroundColor: const Color.fromRGBO(18, 23, 32, 1),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Column(
            children: [
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, EmailPasswordSignup.routeName);
                },
                text: 'Email/Password Sign Up',
              ),
              const SizedBox(height: 35.0),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, EmailPasswordLogin.routeName);
                },
                text: 'Email/Password Login',
              ),
              const SizedBox(height: 35.0),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, PhoneScreen.routeName);
                },
                text: 'Phone Sign In',
              ),
              const SizedBox(height: 35.0),
              CustomButton(
                onTap: () {
                  // context.read<FirebaseAuthMethods>().signInWithGoogle(context);
                },
                text: 'Google Sign In',
              ),
              const SizedBox(height: 35.0),
              CustomButton(
                onTap: () {
                  // context.read<FirebaseAuthMethods>().signInWithFacebook(context);
                },
                text: 'Facebook Sign In',
              ),
              const SizedBox(height: 35.0),
              CustomButton(
                onTap: () {
                  // context.read<FirebaseAuthMethods>().signInAnonymously(context);
                },
                text: 'Anonymous Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
