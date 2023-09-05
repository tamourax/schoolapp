import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

// ignore: must_be_immutable
class SiginButton extends StatefulWidget {
final String hint;
void Function()? onPressed;
  SiginButton({ Key? key,  required this.hint, required this.onPressed, }): super(key: key);

  @override
  State<SiginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<SiginButton> {
  
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height*.07,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(5)
      ),
      child: MaterialButton(onPressed: widget.onPressed,
      child: Text(widget.hint,
      style: Styles.buttontextstyle,
      ),
      ),
    );
  }
}
