import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class Subjects extends StatelessWidget {
  const Subjects({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        crossAxisCount: 3,
        crossAxisSpacing: 0.5,
        mainAxisSpacing: 0.5,
        children: [
          for (int i = 0; i < 6; i++)
            Card(
              child: Container(
                  padding: const EdgeInsetsDirectional.only(
                    top: 8,
                    start: 8,
                    // bottom: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Science',
                          style: Styles.textEdit.copyWith(
                            color: Color(0xFF181D26),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      Text(
                        '10AM - 12PM',
                        style: Styles.textEdit.copyWith(
                          color: Color(0xFF464950),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        'Attended',
                        style: Styles.textEdit.copyWith(
                          color: Color(0xFF1246AC),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )),
            ),
        ]);
  }
}
