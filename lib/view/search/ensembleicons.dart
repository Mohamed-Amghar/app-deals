import 'package:deals_app/view/search/cardIcon.dart';
import 'package:flutter/material.dart';

class EnsembleIconsSearch extends StatefulWidget {
  const EnsembleIconsSearch({Key? key}) : super(key: key);

  @override
  State<EnsembleIconsSearch> createState() => _EnsembleIconsSearchState();
}

class _EnsembleIconsSearchState extends State<EnsembleIconsSearch> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Wrap(
          direction: Axis.horizontal,
          children: const [
            CardIconSearch(
              iconImage: 'assets/icons/fruit.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/canned.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/apartment.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/drink.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/dessert.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/jacket.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/decoration.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/foods.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/jeux.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/fridge.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/phone.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/car.png',
            ),
            CardIconSearch(
              iconImage: 'assets/icons/fruit.png',
            ),
          ],
        ),
      ),
    );
  }
}
