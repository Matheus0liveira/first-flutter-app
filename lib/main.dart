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
    return MaterialApp(theme: ThemeData.light(), home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            child: Text("Hello World - $count"),
            onTap: () {
              setState(() {
                count++;
              });
            }));
  }
}
