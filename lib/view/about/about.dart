import 'package:flutter/material.dart';

import '../appBar.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(
        title: 'ABOUT APPLICATION',
      ),
      body: Center(
        child: Column(children: [
          Image.asset(
            "assets/logo.png",
            width: 200,
            height: 200,
            color: Colors.pinkAccent,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50, left: 23),
            child: Text(
              "To submit a complying tender you are required to submit a completed Offer Application, including the Offer Schedule (Annexure 1), executed by the party making the offer where indicated.",
              style: TextStyle(fontFamily: "EduSABeginner", fontSize: 20),
            ),
          )
        ]),
      ),
    );
  }
}
