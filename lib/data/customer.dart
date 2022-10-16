import 'dart:collection';

import 'package:flutter/material.dart';

class Customer extends ChangeNotifier {
  String societe;
  String description;
  String network;
  int prix;
  String dateDebut;
  String dateFin;
  String urlSite;
  String title;
  String city;
  bool firstNameBool;
  bool lastNameBool;
  bool emailBool;
  bool dateBool;
  bool phoneBool;
  Customer({
    required this.societe,
    required this.description,
    required this.network,
    required this.prix,
    required this.dateDebut,
    required this.dateFin,
    required this.urlSite,
    required this.title,
    required this.city,
    required this.firstNameBool,
    required this.lastNameBool,
    required this.emailBool,
    required this.dateBool,
    required this.phoneBool,
  });

  String _searchString = "";

  UnmodifiableListView<Customer> get dogs => _searchString.isEmpty
      ? UnmodifiableListView(customerInfo)
      : UnmodifiableListView(
          customerInfo.where((dog) => dog.societe.contains(_searchString)));

  void changeSearchString(String searchString) {
    _searchString = searchString;
    print(_searchString);
    notifyListeners();
  }

  map(DropdownMenuItem<String> Function(String items) param0) {}
}

List<Customer> customerInfo = [
  Customer(
    title: "macdo-title",
    societe: "MacDoonalds",
    description:
        'description test test test test test test test test test test test test',
    network:
        'https://images.pexels.com/photos/1095550/pexels-photo-1095550.jpeg?auto=compress&cs=tinysrgb&w=1600',
    prix: 150,
    dateDebut: "20/06/2022",
    dateFin: "07/08/2022",
    urlSite: "http://www.mcdonalds.ma/",
    city: 'tanger',
    firstNameBool: true,
    lastNameBool: true,
    dateBool: true,
    emailBool: false,
    phoneBool: false,
  ),
  Customer(
    title: "carrefour-title",
    societe: "Carrefour",
    description:
        'description test test test test test test test test test test test test ',
    network:
        'https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    prix: 320,
    dateDebut: "20/06/2022",
    dateFin: "07/08/2022",
    urlSite: "https://www.carrefourmaroc.ma/",
    city: 'tanger',
    firstNameBool: true,
    lastNameBool: true,
    dateBool: true,
    emailBool: true,
    phoneBool: true,
  ),
  Customer(
    title: "marjane-title",
    societe: "MARJANE",
    description:
        'description test test test test test test test test test test test test ',
    network:
        'https://images.pexels.com/photos/406152/pexels-photo-406152.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    prix: 140,
    dateDebut: "20/06/2022",
    dateFin: "07/08/2022",
    urlSite: "https://www.marjane.ma/",
    city: 'tanger',
    firstNameBool: true,
    lastNameBool: true,
    dateBool: true,
    emailBool: true,
    phoneBool: true,
  ),
  Customer(
    title: "BIM-title",
    societe: "BIM",
    description:
        'description test sddd test test test test test test test test test test ',
    network:
        'https://images.pexels.com/photos/6966323/pexels-photo-6966323.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    prix: 80,
    dateDebut: "13/07/2022",
    dateFin: "07/08/2022",
    urlSite: "https://www.bim.ma/default.aspx",
    city: 'meknes',
    firstNameBool: true,
    lastNameBool: false,
    dateBool: false,
    emailBool: true,
    phoneBool: false,
  )
];
List<Customer> favoriteDataList = [
  Customer(
    title: "macdo-title",
    societe: "MacDoonalds",
    description:
        'description test test test test test test test test test test test test ',
    network:
        'https://images.pexels.com/photos/1095550/pexels-photo-1095550.jpeg?auto=compress&cs=tinysrgb&w=1600',
    prix: 150,
    dateDebut: "20/06/2022",
    dateFin: "07/08/2022",
    urlSite: "http://www.mcdonalds.ma/",
    city: 'casablanca',
    firstNameBool: true,
    lastNameBool: true,
    dateBool: true,
    emailBool: true,
    phoneBool: true,
  ),
];
List<String> mainDataList = [
  "Apple",
  "Apricot",
  "Banana",
  "Blackberry",
  "Coconut",
  "Date",
  "Fig",
  "Gooseberry",
  "Grapes",
  "Lemon",
  "Litchi",
  "Mango",
  "Orange",
  "Papaya",
  "Peach",
  "Pineapple",
  "Pomegranate",
  "Starfruit"
];
