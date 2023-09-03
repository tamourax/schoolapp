import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/core/utils/styles.dart';

class CustomBottomDialog extends StatelessWidget {
  const CustomBottomDialog({super.key, required this.text, this.onTap, this.cancel = false});
  final String text;
  final Function()? onTap;
  final bool cancel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 110,
        height: 45,
        decoration: BoxDecoration(
          color: cancel? Colors.white: kPrimaryColor,
          border: Border.all(color: kPrimaryColor, width: 1),
          borderRadius: BorderRadius.circular(7)
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.fontBottomDialog.copyWith(color: cancel? kPrimaryColor: Colors.white),
          ),
        ),
      ),
    );
  }
}
