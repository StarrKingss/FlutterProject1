import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hint; // untuk di isikan ketinka di panggil
  final TextEditingController txtController;
  final double cornerRadius;
  final TextInputType? keyboardType;
  const CustomTextfield({
    super.key,
    required this.hint,
    required this.txtController,
    required this.cornerRadius,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hint: Text(hint),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
      ),
    );
  }
}
