// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PictureProfile extends StatelessWidget {
  const PictureProfile({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 55,
            child: ClipOval(
              child: Image.network(
                image,
                fit: BoxFit.cover,
                width: 120.0,
                height: 120.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
