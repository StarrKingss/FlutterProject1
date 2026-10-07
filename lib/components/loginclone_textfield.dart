import 'package:flutter/material.dart';

class LoginCloneTF extends StatelessWidget {
  final String hint;// untuk di isikan ketinka di panggil
  final TextEditingController txtController;
  final double cornerRadius;
  final IconData prefixIcon;
  final bool obsecureText;
  final Color? fillColor;
  const LoginCloneTF({super.key,
  required this.hint,
  required this.txtController,
  required this.cornerRadius,
  required this.obsecureText,
  required this.prefixIcon,
  required this.fillColor});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: obsecureText,
      decoration: InputDecoration(
        hintText: hint,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
        fillColor: fillColor,
        filled: true,
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}