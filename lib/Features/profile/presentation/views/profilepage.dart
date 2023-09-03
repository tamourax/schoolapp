import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:schoolapp/Features/profile/presentation/widget/choices.dart';
import 'package:schoolapp/core/utils/assets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  passwordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              color: Colors.white,
              width: 279,
              height: 199,
              child: const Column(
                children: [
                  Text("To protect your information, please enter the password"),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Password"
                    ),
                  )
                ],
              ),
            ),
          )
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
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
          const SizedBox(
            height: 60,
          ),
          const Choices(icon: AssetsData.childProfile, title: "Child Profile"),
          Choices(
            icon: AssetsData.personalData,
            title: "Personal Data",
            onTap: () {
              passwordDialog(context);
            },
          ),
          const Choices(icon: AssetsData.setting, title: "Setting"),
          const Choices(icon: AssetsData.contact, title: "Contact Us"),
          const Choices(icon: AssetsData.logout, title: "Log out"),
        ],
      ),
    ));
  }
}
