import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          minimumSize: const Size(double.infinity, 40),
          backgroundColor: const Color(0xFF08726A),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'poppins_bold',
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }
}
