import 'package:flutter/material.dart';
import 'package:schoolapp/Features/profile/presentation/widget/choices.dart';
import 'package:schoolapp/core/utils/assets.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

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
          Choices(icon: AssetsData.childProfile, title: "Child Profile"),
          Choices(icon: AssetsData.personalData, title: "Personal Data"),
          Choices(icon: AssetsData.setting, title: "Setting"),
          Choices(icon: AssetsData.contact, title: "Contact Us"),
          Choices(icon: AssetsData.logout, title: "Log out"),

        ],
      ),
    ));
  }
}
