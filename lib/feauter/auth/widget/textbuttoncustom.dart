import 'package:cubit/const/appbuttonstyle.dart';
import 'package:flutter/material.dart';

import '../../../const/apptextstyle.dart';

class Textbuttoncustom extends StatelessWidget {
  Textbuttoncustom({super.key, required this.title, this.onpress});
  String title;
  VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: Appbuttonstyle().authtextbuttonstyle,
      onPressed: onpress,
      child: Text(title, style: Apptextstyle().authsubtitle),
    );
  }
}
