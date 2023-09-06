import 'package:flutter/material.dart';

import 'package:schoolapp/Features/blog/presentation/views/Widgets/AppBar.dart';

import 'package:schoolapp/core/utils/styles.dart';

class BlogDetailesPage extends StatelessWidget {
  const BlogDetailesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const BlogAppBar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Container(
                  height: size.height * .5,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Center(child: Image.asset('assets/images/pana.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Posted 3 days ago',
                      style: Styles.detailedtextstyle.copyWith(
                        color: Color.fromARGB(255, 116, 115, 115),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share_sharp)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.bookmark)),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text('Boys, disengagement from education',style: Styles.maintextstyle.copyWith(fontWeight: FontWeight.bold),),
              ),

            ]),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Container(
                height: size.height * .5,
                child: Text(
                  'Girls have more difficulty accessing education and are more likely than boys to be out of school, particularly at primary level. However, boys are at greater risk of repeating grades, failing to progress and complete their education, and not learning while in school. Globally, 132 million boys are out of school. That’s more than half of the global out-of-school youth population and more than the 127 million girls who are also out of school.',
                  style: Styles.detailedtextstyle
                      .copyWith(color: Color.fromARGB(255, 116, 115, 115)),
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
