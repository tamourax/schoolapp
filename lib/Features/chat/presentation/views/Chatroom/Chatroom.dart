import 'package:flutter/material.dart';
import 'package:schoolapp/Features/chat/presentation/views/Chatroom/chatroombar.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../MessagesList/Messageslist.dart';

class Chatroom extends StatelessWidget {
  const Chatroom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: media.height * .04,
        ),
        Chatroombar(),
        MessagesList()
      ]),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 10),
        width: media.width * .9,
        height: media.height * .08,
        decoration: BoxDecoration(
            color: kaccentcolor, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Image.asset(AssetsData.Attachment_chat),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Write a message to Mr Ahmed',
                    hintStyle: Styles.s2etailedtextstyle.copyWith(fontSize: 15),
                    border: UnderlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            Container(
              height: media.height * .065,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor),
              child: Image.asset(
                AssetsData.send_messege,
              ),
            )
          ],
        ),
      ),
    );
  }
}
