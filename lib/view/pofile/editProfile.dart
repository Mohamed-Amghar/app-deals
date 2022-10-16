import 'package:deals_app/components/Button.dart';
import 'package:deals_app/components/textField.dart';
import 'package:deals_app/view/appBar.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarComponent(title: 'Edit Profile'),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  TextFieldComponent(
                      label: "name",
                      icon: Icons.person,
                      lenght: 12,
                      type: TextInputType.name),
                  TextFieldComponent(
                      label: "password",
                      icon: Icons.password,
                      lenght: 20,
                      type: TextInputType.visiblePassword),
                  TextFieldComponent(
                      label: "cofirme password",
                      icon: Icons.password,
                      lenght: 20,
                      type: TextInputType.visiblePassword),
                  ButtonComponent(
                      title: 'Confirme',
                      heightBorder: 50,
                      widthBorder: 90,
                      iconborder: Icons.done)
                ],
              ),
            ),
          ),
        ));
  }
}
