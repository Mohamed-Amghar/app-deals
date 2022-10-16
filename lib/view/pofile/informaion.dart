import 'package:deals_app/view/pofile/pictureProfile.dart';
import 'package:flutter/material.dart';

import '../../data/infoData.dart';
import 'editProfile.dart';

class InformationProfile extends StatefulWidget {
  const InformationProfile({Key? key}) : super(key: key);

  @override
  State<InformationProfile> createState() => _InformationProfileState();
}

class _InformationProfileState extends State<InformationProfile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 10, left: 10),
      scrollDirection: Axis.vertical,
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: [
            PictureProfile(
              image: infoName[0]["Picture"],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text("Name :    ",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          )),
                      Text("${infoName[0]["full_name"].toUpperCase()}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text("Age     :",
                          style: TextStyle(fontWeight: FontWeight.w300)),
                      Text("    ${infoName[0]["age"]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text("Email  :    ",
                          style: TextStyle(fontWeight: FontWeight.w300)),
                      Text("${infoName[0]["Email"]}",
                          style: const TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditProfile()));
                },
                child: const Text(
                  "Edit",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
