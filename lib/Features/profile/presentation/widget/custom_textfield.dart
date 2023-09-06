import 'package:flutter/material.dart';

class CustomTextFeild extends StatefulWidget {
  const CustomTextFeild({super.key, required this.title});
  final String title;
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
        width: width / 1.5,
        height: height / 15,
        padding: const EdgeInsets.only(left: 5, bottom: 8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.8),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            SizedBox(
              width: width / 1.7,
              child: TextField(
                obscureText: !eye,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.title,
                ),
              ),
            ),
            IconButton(
                iconSize: width / 37,
                alignment: Alignment.centerRight,
                onPressed: () {
                  setState(() {
                    eye = !eye;
                  });
                },
                icon: Icon(
                    eye ? Icons.visibility : Icons.visibility_off_outlined))
          ],
        ));
  }
}
