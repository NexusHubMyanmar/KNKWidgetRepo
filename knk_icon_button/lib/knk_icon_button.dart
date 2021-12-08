library knk_icon_button;

import 'package:flutter/material.dart';

class KNKIconButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback callback;
  const KNKIconButton(this.text,
      {Key? key,
      required this.callback,
      this.textColor = const Color.fromRGBO(46, 76, 109, 1),
      this.icon = Icons.filter_frames,
      this.iconColor = const Color.fromRGBO(46, 76, 109, 1),
      this.backgroundColor = const Color.fromRGBO(222, 222, 222, 1)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: TextButton(
        onPressed: callback,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor)),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Expanded(
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
