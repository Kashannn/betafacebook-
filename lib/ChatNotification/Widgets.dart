import 'package:flutter/material.dart';

AppBar AllBar({
  required String text,
}) {
  return AppBar(
    title: Text(
      '$text',
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    actions: [
      IconButton(
        color: Colors.black,
        icon: Icon(Icons.more_vert),
        onPressed: () {
          // Add your functionality here
        },
      ),
    ],
  );
}
