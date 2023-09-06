import 'package:flutter/material.dart';

import '../../../../constants.dart';

Widget defualtButton({
  required double redius,
  required String text,
  required Color textColor,
  required Color backColor,
}) =>
    Expanded(
      child: ElevatedButton(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all(TextStyle(color: textColor)),
              backgroundColor: MaterialStateProperty.all<Color>(backColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(redius),
                        bottomLeft: Radius.circular(redius),
                      )))),
          onPressed: () {},
          child: Text(text,
              style: TextStyle(
                color: Colors.white,
              ))),
    );
