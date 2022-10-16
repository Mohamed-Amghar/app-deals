import 'package:flutter/material.dart';

class Partie1 extends StatelessWidget {
  const Partie1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 7,
            child: Container(
              height: 40,
              margin: const EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: const TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 10, top: 0, bottom: 0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    hintText: 'SEARCH',
                    hintStyle: TextStyle(
                      fontSize: 14,
                    )),
              ),
            )),
        Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: const Color.fromARGB(173, 52, 7, 216),

              // ignore: prefer_const_constructors
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            ))
      ],
    );
  }
}
