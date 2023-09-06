import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 22.5,
          backgroundImage: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/7f85/6790/8c3365b7da71c966318cbfcd90d64cbe?Expires=1694995200&Signature=ca7Cvv5rb27ltNx0NG2kMm1RybGmuoD7M6YeJY3K52gm1YdoBMCxicpHTlX8TRR8UNPmlNm5kAlFv61hWwuvZHa-w52mN8V5DgYEG3bf2sVNu3rLP3OiFKX0QePiU9Idu2lr8ocKOxewfl2oXMjJ2zY~eyXnypAdIt-ghxvAtdVkRPLHNOphgBl8gBd6ClemDoogX9Zx3MEBviLWH5TwKJviIGtTJuZRxU3GXLx45SSLT2yETiUWhEctso-5AU6oSbqu05PuRA5Ky1PIP~A-O-mE4fbsa6J2c6kYEEdpGlNrjajfXBVOKUSgdjEjakypkNZ9EJmr4~gs9w5sxPFfjA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                'Good Morning',
                style: Styles.textEdit.copyWith(
                  color: Color(0xFF464950),
                  fontWeight: FontWeight.w500,
                  height: 1.43,
                  letterSpacing: 0.25,
                ),
              ),
              Text('Mr Ahmed',
                  style: Styles.textEdit.copyWith(
                    color: Color(0xFF181D26),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.11,
                    letterSpacing: 0.25,
                  ))
            ],
          ),
        ),
        const Spacer(),
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 41,
              height: 42,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: ShapeDecoration(
                color: Color(0xFFEFEFEF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
              ),
            ),
            Icon(Icons.notifications_outlined)
          ],
        ),
      ],
    );
  }
}
