// ignore_for_file: file_names

import 'package:deals_app/components/Button.dart';
import 'package:deals_app/components/textField.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'SignUp',
                style: TextStyle(
                    fontFamily: "EduSABeginner",
                    fontSize: 60,
                    color: Color.fromARGB(255, 54, 4, 110)),
              ),
            ),
            TextFieldComponent(
                label: 'UserName',
                icon: Icons.person,
                lenght: 20,
                type: TextInputType.name),
            TextFieldComponent(
                label: 'Email',
                icon: Icons.email,
                lenght: 30,
                type: TextInputType.emailAddress),
            TextFieldComponent(
                label: 'Password',
                icon: Icons.password,
                lenght: 20,
                type: TextInputType.visiblePassword),
            TextFieldComponent(
                label: 'Confirme Password',
                icon: Icons.password,
                lenght: 20,
                type: TextInputType.visiblePassword),
            ButtonComponent(
              title: "Signup",
              heightBorder: 40,
              widthBorder: 100,
              iconborder: Icons.sign_language,
              // ignore: avoid_print
            )
          ],
        ),
      ),
    ));
  }
}
