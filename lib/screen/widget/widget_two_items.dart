import 'package:flutter/material.dart';

Widget widgetTwoItems(
    {@required Widget child1, @required Widget child2, Function() onTap}) {
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          child1,
          SizedBox(width: 16),
          child2,
        ],
      ),
    ),
    onTap: () {
      if (onTap != null) {
        onTap();
      }
    },
  );
}
