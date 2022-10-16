import 'package:deals_app/provider/auth.dart';
import 'package:deals_app/view/detail/detail.dart';
import 'package:deals_app/view/login/loginSignUp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/customer.dart';
import 'CardDeals.dart';

class Partie4 extends StatefulWidget {
  const Partie4({
    Key? key,
  }) : super(key: key);

  @override
  State<Partie4> createState() => _Partie4State();
}

class _Partie4State extends State<Partie4> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: customerInfo.length,
      itemBuilder: (context, index) {
        Customer customer = customerInfo[index];
        return CardDelas(
          network: customer.network,
          societe: customer.societe,
          description: customer.description,
          prix: customer.prix,
          // ignore: void_checks
          setSquare: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Consumer<Auth>(builder: (context, auth, child) {
                          if (auth.authentificated) {
                            return Detail(customer);
                          } else {
                            return const SignUpLogin();
                          }
                        })));
          },
          isFavorite: false,
        );
      },
    );
  }
}
/*CardDelas(
          network:
              'https://images.pexels.com/photos/1095550/pexels-photo-1095550.jpeg?auto=compress&cs=tinysrgb&w=1600',
          societe: 'MacDoonalds',
          description:
              'description test test test test test test test test test test test test ',
          prix: '250',
        ),*/