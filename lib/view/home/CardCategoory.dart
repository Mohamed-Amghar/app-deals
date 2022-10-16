// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardCategoory extends StatelessWidget {
  const CardCategoory(
      {Key? key,
      required this.icon1,
      required this.width,
      required this.height})
      : super(key: key);
  final IconData icon1;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 195, 191, 248),
      child: InkWell(
        splashColor: const Color.fromARGB(255, 35, 47, 58).withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        radius: 30,
        child: SizedBox(
          width: width,
          height: height,
          child: Center(
              child: Icon(
            icon1,
            size: 40,
            color: const Color.fromARGB(213, 43, 42, 42),
          )),
        ),
      ),
    );
  }
}
