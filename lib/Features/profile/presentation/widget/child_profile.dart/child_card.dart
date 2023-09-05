import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/styles.dart';

// ignore: must_be_immutable
class ChildCardItem extends StatefulWidget {
  ChildCardItem(
      {super.key,
      required this.name,
      required this.level,
      required this.clas,
      required this.image,
      required this.radio});
  final String name;
  final String level;
  final String clas;
  final String image;
  String child = "girl";
  Widget radio;
  @override
  State<ChildCardItem> createState() => _ChildCardItemState();
}

class _ChildCardItemState extends State<ChildCardItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  widget.image,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: Styles.font16,
                    ),
                    Text(
                      "Level: ${widget.level}",
                      style: Styles.childcard,
                    ),
                    Text(
                      "Class: ${widget.clas}",
                      style: Styles.childcard,
                    )
                  ],
                )
              ],
            ),
            widget.radio
          ],
        ),
      ),
    );
  }
}
