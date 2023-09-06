import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants.dart';
import '../widget/update_model.dart';

class UrgentUpdate extends StatelessWidget {
  // const UrgentUpdate({super.key});
  var updateController = PageController();
  @override
  Widget build(Object context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            itemBuilder: (context, index) => buildUdateIteam(content[index]),
            itemCount: content.length,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SmoothPageIndicator(
                controller: updateController,
                effect: ExpandingDotsEffect(
                    dotColor: Kindicatorcoloe,
                    activeDotColor: kPrimaryColor,
                    spacing: 5,
                    dotWidth: 10,
                    dotHeight: 10,
                    expansionFactor: 1.3),
                count: content.length),
          ],
        ),
      ],
    );
  }
}

Widget buildUdateIteam(UpdateModel model) => Container(
      width: double.infinity,
      color: kaccentcolor,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
            top: 16, end: 8, start: 8, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${model.title}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            //  #D9D9D9
            Text(
              '${model.description}',
              style: TextStyle(
                color: Colors.grey,
                //Color(0xD9D9D9),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
