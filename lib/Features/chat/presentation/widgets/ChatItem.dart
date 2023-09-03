import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/assets.dart';
import 'package:schoolapp/core/utils/styles.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            child: Image.asset(AssetsData.avatar),
            radius: 35,
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mr Mohamed',
                      style: Styles.fontname.copyWith(fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Text(
                        '25m',
                        style: Styles.s2etailedtextstyle.copyWith(fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Text('English Teacher',
                    style: Styles.detailedtextstyle
                        .copyWith(fontSize: 12, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'hi mr mohammed,Iam writing u today',
                  style: Styles.s2etailedtextstyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
