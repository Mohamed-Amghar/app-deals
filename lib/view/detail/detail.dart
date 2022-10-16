// ignore_for_file: deprecated_member_use

import 'package:deals_app/components/Button.dart';
import 'package:deals_app/components/textField.dart';
import 'package:deals_app/data/customer.dart';
import 'package:deals_app/view/appBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Detail extends StatelessWidget {
  final Customer customer;
  // ignore: use_key_in_widget_constructors
  const Detail(this.customer);
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(title: customer.title),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(customer.network),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(customer.societe,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(fontSize: 25),
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        customer.dateDebut,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Text(
                        "--------->",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        customer.dateFin,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(customer.description,
                    style: const TextStyle(
                        fontSize: 18, fontFamily: 'EduSABeginner')),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 2, left: 200),
                child: Text(
                  "${customer.prix.toString()} DH",
                  style:
                      const TextStyle(fontSize: 22, fontFamily: 'Monstserrat'),
                  textAlign: TextAlign.right,
                ),
              ),
              if (customer.firstNameBool)
                const TextFieldComponent(
                  label: 'first name',
                  icon: Icons.badge,
                  lenght: 20,
                  type: TextInputType.name,
                ),
              if (customer.lastNameBool)
                const TextFieldComponent(
                    label: 'last name',
                    icon: Icons.badge,
                    lenght: 20,
                    type: TextInputType.name),
              if (customer.dateBool)
                const TextFieldComponent(
                    label: 'Birthday',
                    icon: Icons.celebration_rounded,
                    lenght: 10,
                    type: TextInputType.datetime),
              if (customer.emailBool)
                const TextFieldComponent(
                    label: 'Email',
                    icon: Icons.mail,
                    lenght: 30,
                    type: TextInputType.emailAddress),
              if (customer.phoneBool)
                const TextFieldComponent(
                    label: 'Telephone',
                    icon: Icons.badge,
                    lenght: 13,
                    type: TextInputType.number),
              const ButtonComponent(
                title: 'Take The Offre',
                heightBorder: 40,
                iconborder: Icons.done,
                widthBorder: 60,
                // ignore: avoid_print
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () async {
                  _launchInBrowser(customer.urlSite);
                },
                child: const Text('voir sur site'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
