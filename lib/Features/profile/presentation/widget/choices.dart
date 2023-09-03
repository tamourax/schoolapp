import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/assets.dart';
import 'package:schoolapp/core/utils/styles.dart';

class Choices extends StatelessWidget {
  const Choices({super.key, required this.icon, required this.title, this.onTap});
  final String icon;
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 32),
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Image.asset(icon),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: Styles.font16
                  ),
                ],
              ),
            ),
            Image.asset(AssetsData.arrow)
          ],
        ),
      ),
    );
  }
}
