// ignore_for_file: file_names

import 'package:deals_app/view/login/signUp.dart';
import 'package:flutter/material.dart';

import 'loginScreen.dart';

class SignUpLogin extends StatefulWidget {
  const SignUpLogin({Key? key}) : super(key: key);

  @override
  State<SignUpLogin> createState() => _SignUpLoginState();
}

class _SignUpLoginState extends State<SignUpLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Image.asset(
                "assets/logo.png",
                width: 200,
                height: 200,
                color: Colors.pinkAccent,
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              icon: const Icon(Icons.face, size: 48),
              label: const Text(
                "Login",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUp()));
              },
              icon: const Icon(Icons.logout, size: 48),
              label: const Text(
                "SignUp",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
