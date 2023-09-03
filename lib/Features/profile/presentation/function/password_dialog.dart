import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:schoolapp/Features/profile/presentation/widget/custom_bottom_dialog.dart';
import 'package:schoolapp/core/utils/styles.dart';

passwordDialog(bool eye, BuildContext context, void Function()? onPressed){
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
            backgroundColor: Colors.transparent,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                padding: EdgeInsets.all(15),
                width: 340,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    const Text(
                      "To protect your information, please enter the password",
                      style: Styles.font16,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      obscureText: eye,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                              onPressed: onPressed,
                              icon: Icon(eye
                                  ? Icons.visibility
                                  : Icons.visibility_off_outlined))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const CustomBottomDialog(
                          text: "Enter",
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        CustomBottomDialog(
                          text: "Cancel",
                          cancel: true,
                          onTap: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ));
      },
    );
}