import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    super.key,
    required this.onPressedLogin,
    required this.text,
    this.width,
    this.backgroundColor = Colors.black,
  });

  final VoidCallback onPressedLogin;
  final String text;
  double? width;
  Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedLogin,
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
