library search_bar;

import 'package:flutter/material.dart';

class ThemeSearchBar extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const ThemeSearchBar({
    Key? key,
    required this.onPressed,
    this.icon = Icons.search,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(230, 242, 246, 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height: 50,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search Category",
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Color.fromRGBO(46, 76, 109, 1),
                  ),
                  cursorColor: Color.fromRGBO(46, 76, 109, 1),
                ),
              )),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 50,
              child: TextButton(
                onPressed: onPressed,
                child: Icon(
                  icon,
                  color: const Color.fromRGBO(46, 76, 109, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
