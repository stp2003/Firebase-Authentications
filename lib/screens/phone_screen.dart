import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class PhoneScreen extends StatefulWidget {
  static String routeName = '/phone';
  const PhoneScreen({Key? key}) : super(key: key);

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phone Number Screen',
          style: TextStyle(
            fontFamily: 'poppins_bold',
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: const Color.fromRGBO(18, 23, 32, 1),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            controller: phoneController,
            hintText: 'Enter phone number',
          ),
          const SizedBox(height: 80.0),
          CustomButton(
            onTap: () {
              // context
              //     .read<FirebaseAuthMethods>()
              //     .phoneSignIn(context, phoneController.text);
            },
            text: 'OK',
          ),
        ],
      ),
    );
  }
}
