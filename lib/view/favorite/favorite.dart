import 'package:deals_app/data/customer.dart';
import 'package:flutter/material.dart';

import '../appBar.dart';
import '../detail/detail.dart';
import '../home/CardDeals.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(
        title: 'My Favorite',
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: favoriteDataList.length,
        itemBuilder: (context, i) {
          Customer favorite = favoriteDataList[i];
          return CardDelas(
            network: favorite.network,
            societe: favorite.societe,
            description: favorite.description,
            prix: favorite.prix,
            // ignore: void_checks
            setSquare: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Detail(favorite)));
            },
            isFavorite: true,
          );
        },
      ),
    );
  }
}
