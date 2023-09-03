import 'package:flutter/material.dart';
import 'package:schoolapp/Features/profile/presentation/widget/choices.dart';
import 'package:schoolapp/core/utils/assets.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  final Map choicesList = {
    "Child Profile": AssetsData.childProfile,
    "Personal Data": AssetsData.personalData,
    "Setting": AssetsData.setting,
    "Contact Us": AssetsData.contact,
    "Log out": AssetsData.logout,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Align(
            child: Column(
              children: [
                Container(
                    decoration: const BoxDecoration(),
                    child: Image.asset(AssetsData.avatar)),
                const Text(
                  "Ali Youssef",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 23),
                ),
                Text(
                  "Parent : Layla & lsraa",
                  style: TextStyle(color: Colors.grey[600], fontSize: 17),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60,),
          ...List.generate(choicesList.length, (index) {
            return Choices(
                icon: choicesList.values.elementAt(index),
                title: choicesList.keys.elementAt(index));
          })
        ],
      ),
    ));
  }
}
