import 'package:flutter/material.dart';

class LoginCloneButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double cornerRadius;
  const LoginCloneButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.cornerRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
