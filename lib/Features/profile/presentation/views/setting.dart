import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/Features/profile/presentation/widget/appBar.dart';
import 'package:schoolapp/core/utils/app_router.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        "Setting",
        () {
           GoRouter.of(context).go(AppRouter.kprofilepage);  
        },
      ),
      body: Container(

      ),
    );
  }
}