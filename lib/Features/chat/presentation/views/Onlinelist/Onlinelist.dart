import 'package:flutter/material.dart';
import 'package:schoolapp/Features/chat/presentation/widgets/Teachercontainer.dart';

class OnlineList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Container(
      height: media.height * .2,
      child: ListView.builder(
        itemBuilder: (context, index) => Teachercontainer(),
        itemCount: 7,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
