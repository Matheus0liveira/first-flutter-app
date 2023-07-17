import 'package:flutter/material.dart';

main() {
  runApp(Container(
    child: Center(
      child: Text(
        'Um texto qualquer',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.red),
      ),
    ),
  ));
}
