library back_button;

import 'package:flutter/material.dart';

class ThemeBack extends StatelessWidget {
  final VoidCallback onPressed;
  final double size = 60;
  final IconData icon;
  const ThemeBack({
    Key? key,
    required this.onPressed,
    this.icon = Icons.forward,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(46, 76, 109, 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
          onPressed: onPressed,
          child: Center(
            child: Icon(
              icon,
              size: 32,
              color: const Color.fromRGBO(230, 242, 246, 1),
            ),
          )),
    );
  }
}
