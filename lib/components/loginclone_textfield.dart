import 'package:flutter/material.dart';

class LoginCloneTF extends StatelessWidget {
  final String hint;// untuk di isikan ketinka di panggil
  final TextEditingController txtController;
  final double cornerRadius;
  const LoginCloneTF({super.key, required this.hint, required this.txtController, required this.cornerRadius});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
      ),
    );
  }
}