import 'package:flutter/widgets.dart';

class Sizescreen {
  double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double widthtextfilesauth(BuildContext context) {
    return Sizescreen().width(context) / 15;
  }

  double higthbetweenelementauth(BuildContext context) {
    return Sizescreen().height(context) / 55;
  }
}
