import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/assets.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
                    decoration: const BoxDecoration(
                    ),
                    child: Image.asset(AssetsData.avatar)
                  )
                ],
              ),
            ),
            
          ],
        ),
      )
    );
  }
}
