import 'package:flutter/material.dart';

class CardIconSearch extends StatelessWidget {
  const CardIconSearch({Key? key, required this.iconImage}) : super(key: key);
  final String iconImage;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(23.0),
        child: Image.asset(
          iconImage,
        ),
      ),
    );
  }
}
