import 'package:flutter/material.dart';

import '../../../const/color.dart';
import '../../../const/size.dart';

class Textfiledcustom extends StatelessWidget {
  Textfiledcustom({
    super.key,
    required this.title,
    this.validate,
    required this.prefix,
    this.visible,
    this.pass,
    this.sufficon,
    required this.width,
    this.onpress,
  });
  final String title;
  var validate;
  IconData prefix;
  IconData? sufficon;
  bool? visible = true, pass = false;
  double width;
  VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width),
    
      child: TextFormField(
        obscureText: visible == true ? true : false,
        validator: validate,
        decoration: InputDecoration(
          hintText: title,
          prefixIcon: Icon(prefix),
          suffixIcon: pass == true
              ? IconButton(onPressed: onpress, icon: Icon(sufficon))
              : SizedBox.shrink(),
          border: border(),
          focusedBorder: border(),
          disabledBorder: border(),
          enabledBorder: border(),
        ),
      ),
    );
  }
}

OutlineInputBorder border() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: color1),
  );
}
