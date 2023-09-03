import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/assets.dart';
import 'package:schoolapp/core/utils/styles.dart';

class Teachercontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      width: media.width * .23,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(child: Image.asset(AssetsData.avatar), maxRadius: 35),
          SizedBox(
            height: 5,
          ),
          Text(
            'MR Mohamed',
            style: Styles.maintextstyle,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            'English',
            style: Styles.detailedtextstyle,
          )
        ],
      ),
    );
  }
}
