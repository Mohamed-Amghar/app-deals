// ignore_for_file: file_names

import 'package:deals_app/provider/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/infoData.dart';
import 'login/loginScreen.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Size get preferredSize => const Size.fromHeight(55);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        title,
        style: const TextStyle(
          color: Color.fromARGB(255, 109, 36, 36),
          fontWeight: FontWeight.w700,
          fontFamily: "Roboto",
          fontStyle: FontStyle.normal,
          fontSize: 19.0,
        ),
      ),

      actions: [
        Consumer<Auth>(builder: (context, auth, child) {
          if (auth.authentificated) {
            return Container(
                margin: const EdgeInsets.only(right: 15),
                child: InkWell(
                  /*onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()))
                },*/
                  child: CircleAvatar(
                    radius: 24,
                    child: ClipOval(
                      child: Image.network(
                        infoName[0]['Picture'],
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ));
          } else {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                icon: const Icon(Icons.person, size: 18),
                label: const Text(
                  "LogIn",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            );
          }
        })
      ],
    );
  }
}
