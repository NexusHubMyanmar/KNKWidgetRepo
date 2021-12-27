library theme_title;

import 'package:flutter/material.dart';

class ThemeTitle extends StatelessWidget {
  final String title;
  final double size;
  const ThemeTitle(
    this.title, {
    Key? key,
    this.size = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: const Color.fromRGBO(46, 76, 109, 1),
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
