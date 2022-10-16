// ignore_for_file: file_names

import 'package:deals_app/view/appBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  void submit() {
    Provider.of<Auth>(context, listen: false).login(cendentials: {
      'email': _email,
      'password': _password,
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(
        title: 'Login',
      ),
      body: Form(
          key: _formKey,
          child: Scrollbar(
              child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text(
                          'LogIn',
                          style: TextStyle(
                              fontFamily: "EduSABeginner",
                              fontSize: 60,
                              color: Color.fromARGB(255, 54, 4, 110)),
                        ),
                      ),
                      TextFormField(
                        initialValue: 'sami@gmail.com',
                        decoration: const InputDecoration(
                          labelText: "Email",
                          hintText: "email@example.com",
                        ),
                        onSaved: (value) {
                          _email = value!;
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Do not use the @ char.'
                              : null;
                        },
                      ),
                      TextFormField(
                        initialValue: '123124123',
                        decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "123123123",
                        ),
                        onSaved: (value) {
                          _password = value!;
                        },
                        validator: (String? value) {
                          return (value != null && value.contains('@'))
                              ? 'Do not use the @ char.'
                              : null;
                        },
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (() {
                            _formKey.currentState!.save();

                            submit();
                          }),
                          child: const Text("Login"),
                        ),
                      )
                    ],
                  )))),
    );
  }
}
