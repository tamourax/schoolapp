import 'package:flutter/material.dart';

import '../../../../constants.dart';

class HomeTextField extends StatelessWidget {
  const HomeTextField({super.key});

  @override
  Widget build(Object context) {
    return TextField(
      onChanged: (value) {},
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          filled: true,
          fillColor: kaccentcolor,
          prefixIcon: Icon(
            Icons.search_rounded,
            color: kdeactivatedtextcolor,
          ),
          border: UnderlineInputBorder(borderSide: BorderSide.none),
          hintText: 'Search for Classes,Events'),
    );
  }
}
