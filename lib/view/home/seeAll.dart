// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../data/infoData.dart';
import 'CardCategoory.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,

          title: const Text(
            "All Category",
            style: TextStyle(
              color: Color.fromARGB(255, 109, 36, 36),
              fontWeight: FontWeight.w700,
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              fontSize: 19.0,
            ),
          ),

          actions: [
            Container(
              margin: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                radius: 24,
                child: ClipOval(
                  child: Image.network(
                    infoName[0]['Picture'],
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ],
          leading: const BackButton(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: const [
                    CardCategoory(
                      icon1: Icons.directions_car,
                      height: 158,
                      width: 158,
                    ),
                    CardCategoory(
                      icon1: Icons.restaurant,
                      height: 158,
                      width: 158,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: const [
                    CardCategoory(
                      icon1: Icons.apartment,
                      height: 158,
                      width: 158,
                    ),
                    CardCategoory(
                      icon1: Icons.shopping_cart,
                      height: 158,
                      width: 158,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: const [
                    CardCategoory(
                      icon1: Icons.car_rental,
                      height: 158,
                      width: 158,
                    ),
                    CardCategoory(
                      icon1: Icons.directions_car,
                      height: 158,
                      width: 158,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: const [
                    CardCategoory(
                      icon1: Icons.directions_car,
                      height: 158,
                      width: 158,
                    ),
                    CardCategoory(
                      icon1: Icons.directions_car,
                      height: 158,
                      width: 158,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
