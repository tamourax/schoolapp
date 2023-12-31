import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';

class BlogAppBar extends StatelessWidget {
  const BlogAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        SizedBox(
          width: width * .31,
        ),
        Text(
          'Blog',
          style: Styles.maintextstyle.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
