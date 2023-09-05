
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/Features/blog/presentation/views/Widgets/AppBar.dart';
import 'package:schoolapp/core/utils/app_router.dart';

import 'package:schoolapp/core/utils/styles.dart';

import 'Widgets/BlogText.dart';
import 'Widgets/Slider.dart';
import 'Widgets/ProfileCard.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BlogAppBar(),
              const BlogTextField(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Recommended',
                  style: Styles.maintextstyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SliderImage(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Latest news',
                  style: Styles.maintextstyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: ListView.builder(
            itemBuilder: ((context, index) {
              return GestureDetector(onTap: (){
                GoRouter.of(context).push(AppRouter.KBlogDetailedpage);
              },child: const ProfileCard());
            }),
            itemCount: 8,
            physics: const NeverScrollableScrollPhysics(),
          ),
        )
      ],
    ));
  }
}

