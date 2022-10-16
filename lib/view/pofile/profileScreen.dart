// ignore_for_file: file_names

import 'package:deals_app/view/login/loginSignUp.dart';
import 'package:deals_app/view/pofile/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/auth.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<Auth>(builder: (context, auth, child) {
        if (auth.authentificated) {
          return const Profile();
        } else {
          return const SignUpLogin();
        }
      }),
    );
  }
}
