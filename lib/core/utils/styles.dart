import 'package:flutter/cupertino.dart';

import '../../constants.dart';

abstract class Styles {
  static const maintextstyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const detailedtextstyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static const s2etailedtextstyle = TextStyle(
      fontSize: 15, fontWeight: FontWeight.w400, color: kdetailedtextcolor);
  static const boldstyle = TextStyle(
      fontSize: 23, fontWeight: FontWeight.bold, color: CupertinoColors.black);
}
