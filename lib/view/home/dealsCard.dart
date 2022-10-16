// ignore_for_file: file_names

import 'package:deals_app/view/appBar.dart';
import 'package:deals_app/view/home/partie1.dart';
import 'package:deals_app/view/home/partie2.dart';
import 'package:deals_app/view/home/partie3.dart';
import 'package:deals_app/view/home/partie4.dart';
import 'package:flutter/material.dart';

class DealsCard extends StatefulWidget {
  const DealsCard({Key? key}) : super(key: key);

  @override
  State<DealsCard> createState() => _DealsCardState();
}

class _DealsCardState extends State<DealsCard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: AppBarComponent(
          title: 'Marhaba Deals',
        ),
        body: MyCustomForm());
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Partie1(),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: const [Partie2(), Partie3(), Partie4()],
          ),
        ))
      ],
    );
  }
}
