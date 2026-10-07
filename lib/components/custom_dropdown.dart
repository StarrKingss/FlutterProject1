import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
    final String value;
  final List<String> items;
  final Function(String?) onChanged;
  const CustomDropdown({super.key,required this.items,required this.onChanged,required this.value});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      items: items.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}