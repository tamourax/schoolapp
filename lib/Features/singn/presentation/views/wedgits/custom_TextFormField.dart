import 'package:flutter/material.dart';
import 'package:schoolapp/core/utils/styles.dart';
import '../../../../../constants.dart';
// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final String hint;
  final IconButton icon;
  bool obscureText=false;
 TextEditingController? controller;
  CustomTextFormField({ Key? key,  required this.hint, required this.controller, required this.icon ,required this.obscureText}): super(key: key);
  @override
  Widget build(BuildContext context) {
 var size = MediaQuery.of(context).size;
    return Container(
      height: size.height*.08,
      child: TextFormField(
        
        controller:controller  ,  
          obscureText: obscureText,    
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: Styles.detailedtextstyle,
            suffixIcon:icon ,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                    color: Ktextfieldcolor
                )
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                  color: Ktextfieldcolor

      
              ),
      
             ),
        
      ),
      )
    );
  }
}