import 'package:flutter/material.dart';
import 'package:schoolapp/Features/profile/presentation/function/password_dialog.dart';
import 'package:schoolapp/Features/profile/presentation/widget/avatar.dart';
import 'package:schoolapp/Features/profile/presentation/widget/choices.dart';
import 'package:schoolapp/core/utils/assets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool eye = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Avatar(),
           SizedBox(
            height: height/10,
          ),
          const Choices(icon: AssetsData.childProfile, title: "Child Profile"),
          Choices(
            icon: AssetsData.personalData,
            title: "Personal Data",
            onTap: () {
              passwordDialog(
                eye,
                context,
                () {
                  setState(() {
                    eye = !eye;
                  });
                },
              );
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
