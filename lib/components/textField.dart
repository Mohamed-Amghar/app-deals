// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent(
      {Key? key,
      required this.label,
      required this.icon,
      required this.lenght,
      required this.type})
      : super(key: key);
  final String label;
  final IconData icon;
  final int lenght;
  final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        // ignore: deprecated_member_use
        cursorColor: Theme.of(context).cursorColor,
        maxLength: lenght,
        keyboardType: type,
        decoration: InputDecoration(
          icon: Icon(icon),
          labelText: label,
          labelStyle: const TextStyle(
            color: Color(0xFF6200EE),
          ),
          helperText: 'your $label',
          suffixIcon: const Icon(
            Icons.check_circle,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF6200EE)),
          ),
        ),
      ),
    );
  }
}
