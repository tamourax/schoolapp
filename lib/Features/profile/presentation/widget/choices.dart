import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/assets.dart';

class Choices extends StatelessWidget {
  const Choices({super.key, required this.icon, required this.title});
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                const SizedBox(width: 10,),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              
            },
            child: Image.asset(AssetsData.arrow),
          )
        ],
      ),
    );
  }
}
