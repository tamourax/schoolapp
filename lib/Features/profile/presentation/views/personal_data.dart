import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/Features/profile/presentation/widget/appBar.dart';
import 'package:schoolapp/Features/profile/presentation/widget/custom_bottom_dialog.dart';
import 'package:schoolapp/Features/profile/presentation/widget/personalData/edit.dart';
import 'package:schoolapp/core/utils/app_router.dart';
import 'package:schoolapp/core/utils/assets.dart';
import 'package:schoolapp/core/utils/styles.dart';

class PersonalData extends StatelessWidget {
  PersonalData({super.key});
  final TextEditingController address = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    address.text =
        "Nasr City, Al-Thawra Street ,Zamalek District, Al-Modir Street, Building 32";
    return Scaffold(
      appBar: CustomAppBar(
        "Personal Data",
        () {
           GoRouter.of(context).go(AppRouter.kprofilepage);
        },
      ),
      body: Container(
          padding: const EdgeInsets.all(23),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Edit(
                icon: AssetsData.homeIcon,
                title: "Address",
                controller: address,
              ),
              const SizedBox(
                height: 40,
              ),
              Edit(
                icon: AssetsData.phoneicon,
                title: "Phone",
                controller: phone,
              ),
              const SizedBox(
                height: 40,
              ),
              Edit(
                icon: AssetsData.lockicon,
                title: "Password",
                controller: password,
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomBottomDialog(
                text: "Save changes",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomBottomDialog(
                text: "Cansel",
                cancel: true,
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kprofilepage);
                },
              )
            ],
          )),
    );
  }
}
