import 'package:flutter/material.dart';

import 'CardCategoory.dart';

class Partie3 extends StatelessWidget {
  const Partie3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 5),
      child: Row(children: const [
        CardCategoory(
          icon1: Icons.directions_car,
          height: 72,
          width: 70,
        ),
        CardCategoory(
          icon1: Icons.restaurant,
          height: 72,
          width: 70,
        ),
        CardCategoory(
          icon1: Icons.apartment,
          height: 72,
          width: 70,
        ),
        CardCategoory(
          icon1: Icons.shopping_cart,
          height: 72,
          width: 70,
        ),
        CardCategoory(
          icon1: Icons.car_rental,
          height: 72,
          width: 70,
        ),
        CardCategoory(
          icon1: Icons.car_rental,
          height: 72,
          width: 70,
        ),
        CardCategoory(
          icon1: Icons.car_rental,
          height: 72,
          width: 70,
        ),
      ]),
    );
  }
}
