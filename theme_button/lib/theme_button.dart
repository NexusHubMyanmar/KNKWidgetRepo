library theme_button;

import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ThemeButton(this.text, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
        color: Color.fromRGBO(230, 242, 246, 1),
        fontSize: 14,
        fontWeight: FontWeight.bold);

    const Color boxColor = Color.fromRGBO(46, 76, 109, 1);

    return Container(
      width: 167,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: boxColor,
      ),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: textStyle,
          )),
    );
  }
}
