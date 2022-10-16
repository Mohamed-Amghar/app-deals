import 'package:deals_app/view/appBar.dart';
import 'package:deals_app/view/home/partie1.dart';
import 'package:deals_app/view/search/ensembleicons.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarComponent(
          title: 'My Favorite',
        ),
        body: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Partie1(),
            ),
            EnsembleIconsSearch()
          ],
        ));
  }
}
