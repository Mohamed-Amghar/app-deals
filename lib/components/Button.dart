// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent(
      {Key? key,
      required this.title,
      required this.heightBorder,
      required this.widthBorder,
      required this.iconborder,
      this.onPressedCall})
      : super(key: key);
  final String title;
  final double heightBorder;
  final double widthBorder;
  final IconData iconborder;
  final void onPressedCall;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton.icon(
          onPressed: () => onPressedCall,
          icon: Icon(iconborder, size: 18),
          label: Text(title),
          style: OutlinedButton.styleFrom(
              minimumSize: Size(widthBorder, heightBorder))),
    );
  }
}
