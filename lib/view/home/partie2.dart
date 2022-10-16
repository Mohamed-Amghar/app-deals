import 'package:deals_app/view/home/seeAll.dart';
import 'package:flutter/material.dart';

class Partie2 extends StatelessWidget {
  const Partie2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: const Text('CATEGORY'),
        )),
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(right: 10),
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SeeAll()));
              },
              child: const Text('see all')),
        ))
      ],
    );
  }
}
