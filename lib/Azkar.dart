import 'package:first_project/screens.dart';
import 'package:flutter/material.dart';

class azkar extends StatefulWidget {
  @override
  State<azkar> createState() => _azkarState();
}

class _azkarState extends State<azkar> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        Screens(
          text: "سبحان الله",
          color: Color(0xFFA448C0),
        ),
        Screens(
          text: "سبحان الله وبحمده",
          color: Color(0xFFECD81C),
        ),
        Screens(
          text: "سبحان الله و الحمد لله",
          color: Color(0xFFC23434),
        ),
        Screens(
          text: "سبحان الله وبحمده\n سبحان الله العظيم",
          color: Color(0xFF64DF53),
        ),
        Screens(
          text: "لا حول ولا قوة إلا بالله",
          color: Color(0xFFFC8E27),
        )
      ],
    ));
  }
}
