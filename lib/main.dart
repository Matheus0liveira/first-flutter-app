import 'package:flutter/material.dart';

main() {
  runApp(AddWidget(
    title: 'Um novo texto qualquer',
  ));
}

class AddWidget extends StatelessWidget {
  final String title;

  const AddWidget({super.key, required this.title});

  // AddWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(),
        home: Container(
          child: Center(child: Text('Hello World')),
        ));
    // return Container(
    //   child: Center(
    //     child: Text(
    //       title,
    //       textDirection: TextDirection.ltr,
    //       style: TextStyle(color: Colors.red),
    //     ),
    //   ),
    // );
  }
}
