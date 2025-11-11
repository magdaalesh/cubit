import 'package:cubit/const/apptextstyle.dart';
import 'package:cubit/const/color.dart';
import 'package:flutter/material.dart';

class Buttoncustom extends StatelessWidget {
  Buttoncustom({
    super.key,
    required this.title,
    required this.onpress,
    required this.style,
  });
  String title;

  ButtonStyle style;
  VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: onpress,
      child: Text(title, style: Apptextstyle().buttontexttitle),
    );
  }
}
