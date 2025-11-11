import 'package:flutter/material.dart';

import 'color.dart';
import 'size.dart';

class Appbuttonstyle {
  ButtonStyle authbutton(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor: color1,
      fixedSize: Size(
        Sizescreen().width(context) / 1.8,
        Sizescreen().height(context) / 15,
      ),
    );
  }

  ButtonStyle authtextbuttonstyle = TextButton.styleFrom(
    padding: EdgeInsets.zero,
    minimumSize: Size.zero,
  );
}
