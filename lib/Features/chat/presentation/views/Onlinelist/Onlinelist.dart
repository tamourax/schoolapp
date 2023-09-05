import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/Features/chat/presentation/widgets/Teachercontainer.dart';
import 'package:schoolapp/core/utils/app_router.dart';

class OnlineList extends StatelessWidget {
  const OnlineList({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SizedBox(
      height: media.height * .18,
      child: ListView.builder(
        itemBuilder: (context, index) => InkWell(
          child: const Teachercontainer(),
          onTap: () => context.push(AppRouter.kChatroom),
        ),
        itemCount: 100,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
