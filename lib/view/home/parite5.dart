import 'package:flutter/material.dart';

class Partie5 extends StatefulWidget {
  const Partie5({Key? key}) : super(key: key);

  @override
  State<Partie5> createState() => _Partie5State();
}

class _Partie5State extends State<Partie5> {
  String dropdownvalue = 'all city';
  String dropdownvalueCompany = 'all company';
  String dropdownvalueMonths = 'last Times';
  var city = [
    "all city",
    'Tanger',
    'Casablanca',
    'Tetouan',
    'Rabat',
    'meknes',
  ];
  var company = [
    "all company",
    'macdonalds',
    'Carrefour',
    'BIM',
    'Pizza Hut',
    'ElDohha',
  ];
  var months = [
    "last Times",
    'aujourd hui',
    'après-demain',
    'après-midi.',
    'avant-hier.',
    'ce matin',
    'ce soir',
    'hier',
    'la semaine dernière',
    'la semaine prochaine',
    'prochain',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 224, 224, 221),
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(
                    color: const Color.fromARGB(255, 175, 141, 138),
                    style: BorderStyle.solid,
                    width: 0.70),
              ),
              height: 35,
              width: 90,
              child: DropdownButton(
                value: dropdownvalue,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                isExpanded: true,

                borderRadius: BorderRadius.circular(12),
                // Array list of items
                items: city.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.040,
                      ),
                    ),
                  );
                }).toList(),

                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 224, 224, 221),
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(
                    color: const Color.fromARGB(255, 175, 141, 138),
                    style: BorderStyle.solid,
                    width: 0.80),
              ),
              height: 35,
              child: DropdownButton(
                // Initial Value
                value: dropdownvalueCompany,
                isExpanded: true,
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                borderRadius: BorderRadius.circular(12),
                // Array list of items
                items: company.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.040,
                      ),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalueCompany = newValue!;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 224, 224, 221),
                borderRadius: BorderRadius.circular(25.0),
                border: Border.all(
                    color: const Color.fromARGB(255, 175, 141, 138),
                    style: BorderStyle.solid,
                    width: 0.80),
              ),
              height: 35,
              width: 140,
              child: DropdownButton(
                // Initial Value
                value: dropdownvalueMonths,
                isExpanded: true,
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                borderRadius: BorderRadius.circular(12),
                // Array list of items
                items: months.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(
                      items,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.040,
                      ),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalueMonths = newValue!;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
