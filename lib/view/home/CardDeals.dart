// ignore_for_file: file_names

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class CardDelas extends StatelessWidget {
  const CardDelas({
    Key? key,
    required this.network,
    required this.societe,
    required this.description,
    required this.prix,
    required this.setSquare,
    required this.isFavorite,
  }) : super(key: key);

  final String network;
  final String societe;
  final String description;
  final int prix;
  final Function setSquare;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: const Color.fromARGB(255, 255, 255, 255),
      child: InkWell(
        splashColor: const Color.fromARGB(255, 35, 47, 58).withAlpha(30),
        onTap: () {
          setSquare();
        },
        child: Column(children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Ink.image(
                  height: 120,
                  image: NetworkImage(network),
                  fit: BoxFit.fitWidth),
              FavoriteButton(
                isFavorite: isFavorite,

                // iconDisabledColor: Colors.white,
                valueChanged: (isFavorite) {
                  // ignore: avoid_print
                  print('Is Favorite : $isFavorite');
                },
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 16, top: 16, left: 0, right: 0),
            child: Row(children: [
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 5),
                      child: Text(
                        societe,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 92, 0, 0),
                            fontSize: 20,
                            fontFamily: 'Monstserrat',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(description),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(prix.toString(),
                              style: const TextStyle(
                                  fontFamily: 'Monstserrat',
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 25)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text('DH',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
