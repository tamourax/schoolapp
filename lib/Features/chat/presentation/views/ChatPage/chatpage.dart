import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schoolapp/Features/chat/presentation/views/Onlinelist/Onlinelist.dart';
import 'package:schoolapp/core/utils/app_router.dart';
import 'package:schoolapp/core/utils/styles.dart';

import '../../../../../constants.dart';
import '../Theacherchats/Theacherchats.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () => context.go(AppRouter.kRequstpage),
        child: Container(
          height: media.height * .07,
          width: media.width * .3,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
              Text(
                'Request',
                style: Styles.maintextstyle
                    .copyWith(color: Colors.white, fontSize: 17),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            children: [
              SizedBox(height: media.height * .07),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      filled: true,
                      fillColor: kaccentcolor,
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: kdeactivatedtextcolor,
                      ),
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Search for theachers'),
                ),
              ),
              SizedBox(
                height: media.height * .03,
              ),
              OnlineList(),
              SizedBox(
                height: media.height * .01,
              ),
              Theacherchats()
            ],
          ),
        ),
      ),
    );
  }
}