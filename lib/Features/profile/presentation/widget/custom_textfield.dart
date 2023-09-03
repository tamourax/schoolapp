import 'package:flutter/material.dart';

class CustomTextFeild extends StatefulWidget {
  CustomTextFeild({super.key});

  @override
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  bool eye = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: width / 1.4,
        height: height / 15,
        padding: const EdgeInsets.only(left: 5, bottom: 8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.8),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            SizedBox(
              width: width/1.7,
              child: TextField(
                obscureText: !eye,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Password"
                ),
              ),
            ),
            IconButton(
              alignment: Alignment.centerRight,
                onPressed: () {
                  setState(() {
                    eye = !eye;
                  });
                },
                icon: Icon(eye? Icons.visibility: Icons.visibility_off_outlined)
              )
          ],
        ));
  }
}

//  TextField(
//                     obscureText: eye,
//                     decoration: InputDecoration(
//                         hintText: "Enter Password",
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10)),
//                         suffixIcon: IconButton(
//                             onPressed: onPressed,
//                             icon: Icon(eye
//                                 ? Icons.visibility
//                                 : Icons.visibility_off_outlined))),
//                   ),