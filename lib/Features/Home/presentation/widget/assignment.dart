import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(blurRadius: 10.0, color: Colors.white10),
      ]),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(8.0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Container(
            width: 115,
            height: 51,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/a4a6/9e48/2927dc95cd8561a6f38ef285f0b093d4?Expires=1694995200&Signature=bgDlYLmHTBWousa~KsBVOWREznKN0~t~VQ6qP2ACLjFgjIe0P9Zde-QSrcn~x~y8W90FkfQ50kHvdzMZYiNXxguvvO5BcLPYDAXqArHVbQE2x-Soh~CV7xB9ozr5HfY~pLUtmKcYXQP3tfl1aQ0aO3khv9HDsRugMgdqSyTAVzX4PxyDlyiAeNTcqK7K0Jrl5V02jpJsf8MCVkWReLiY3-y8xSEzihbg29UyOpMTvVTyEIwu-d6s7V~M-tVIiiEtk6hxpGplOSiRie00yXJjvqscUXqULXaxZgfp3s6MHKY-UT0IeMn9RbFt1GQjXR0w1-d65VeFV~AH8litsbzLng__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Assignment Name',
                  style: Styles.textEdit.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF181C26),
                  )),
              Text(
                't ut et maiores sed \n saepe velit.',
                style: Styles.textEdit.copyWith(
                  color: Color(0xFF464950),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            '-- / 20',
            style: Styles.textEdit.copyWith(
              color: Color(0xFF181D26),
              fontSize: 16,
            ),
          )
        ]),
      ),
    );
  }
}
