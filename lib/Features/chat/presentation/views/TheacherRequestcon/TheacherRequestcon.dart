import 'package:flutter/material.dart';

import '../../widgets/Teachercontainer.dart';

class TheacherRequestcon extends StatelessWidget {
  const TheacherRequestcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Container(
      height: media.height * .2,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 15,
        ),
        itemBuilder: (context, index) => Container(
            padding: EdgeInsets.only(top: 13),
            width: media.width * .27,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(width: 1, color: Colors.grey)),
            child: Teachercontainer()),
        itemCount: 7,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
