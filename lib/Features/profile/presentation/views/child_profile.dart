import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/Features/profile/presentation/widget/appBar.dart';
import 'package:schoolapp/Features/profile/presentation/widget/child_profile.dart/child_card.dart';
import 'package:schoolapp/core/utils/assets.dart';

class ChildProfile extends StatefulWidget {
  const ChildProfile({super.key});

  @override
  State<ChildProfile> createState() => _ChildProfileState();
}

class _ChildProfileState extends State<ChildProfile> {
  String groupVal = "girl";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("Select Child Profile", () {
        GoRouter.of(context).pop();
      }),
      body: Column(
        children: [
          ChildCardItem(
            name: "Mariam Ahmed",
            clas: "6 Primary",
            level: "6/2",
            image: AssetsData.girl,
            radio: Radio(
              value: "girl",
              groupValue: groupVal,
              onChanged: (value) {
                setState(() {
                  groupVal = value!;
                  print(value);
                });
              },
            ),
          ),
          ChildCardItem(
            name: "Mostafa Ahmed",
            clas: "3 Primary",
            level: "3/4",
            image: AssetsData.boy,
            radio: Radio(
              value: "boy",
              groupValue: groupVal,
              onChanged: (value) {
                setState(() {
                  groupVal = value!;
                  print(value);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
