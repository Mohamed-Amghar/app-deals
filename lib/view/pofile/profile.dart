import 'package:deals_app/provider/auth.dart';
import 'package:deals_app/view/pofile/informaion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          "MY ACCOUNT",
          style: TextStyle(
            color: Color.fromARGB(255, 109, 36, 36),
            fontWeight: FontWeight.w700,
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontSize: 19.0,
          ),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 15),
              child:
                  /*onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()))
                },*/
                  TextButton.icon(
                onPressed: () {
                  Provider.of<Auth>(context, listen: false).logout();
                },
                icon: const Icon(Icons.logout, size: 18),
                label: const Text(
                  "LogOut",
                  style: TextStyle(fontSize: 17),
                ),
              )),
        ],
      ),
      body: const InformationProfile(),
    );
  }
}
