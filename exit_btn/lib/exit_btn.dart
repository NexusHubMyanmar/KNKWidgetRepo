library exit_btn;

import 'package:flutter/material.dart';

class ThemeExit extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ThemeExit({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textColor = Color.fromRGBO(46, 76, 109, 1);
    const buttonColor = Color.fromRGBO(230, 242, 246, 1);
    const iconColor = Color.fromRGBO(46, 76, 109, 1);
    const style1 = TextStyle(
      color: textColor,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    );
    return Container(
      width: 220,
      height: 60,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
                flex: 3,
                child: Text(text, textAlign: TextAlign.center, style: style1)),
            const Expanded(
              flex: 1,
              child: Icon(
                Icons.exit_to_app_rounded,
                color: iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
