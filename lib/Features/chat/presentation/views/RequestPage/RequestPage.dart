import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/styles.dart';

import '../../../../../constants.dart';
import '../TheacherRequestcon/TheacherRequestcon.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Request a conversation',
          style: Styles.boldstyle,
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: media.height * .04,
            ),
            Text(
              'Teacher',
              style: Styles.boldstyle,
            ),
            Text('Choose teacher you want to talk with',
                style: Styles.s2etailedtextstyle.copyWith(fontSize: 17)),
            SizedBox(
              height: media.height * .04,
            ),
            TheacherRequestcon(),
            SizedBox(
              height: media.height * .04,
            ),
            Text(
              'Dates',
              style: Styles.boldstyle,
            ),
            Text('Choose from available dates',
                style: Styles.s2etailedtextstyle.copyWith(fontSize: 17)),
            SizedBox(
              height: media.height * .04,
            ),
            Text(
              'Time',
              style: Styles.boldstyle,
            ),
            Text('Choose from available Time',
                style: Styles.s2etailedtextstyle.copyWith(fontSize: 17)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: media.width * .9,
        height: media.height * .08,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Book Your Meeting',
              style:
                  Styles.boldstyle.copyWith(fontSize: 20, color: Colors.white)),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              backgroundColor: kPrimaryColor,
              maximumSize: Size.fromWidth(media.width * 4)),
        ),
      ),
    );
  }
}
