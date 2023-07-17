import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() {
    return HomePageState(title: title);
  }
}

class HomePageState extends State<HomePage> {
  final String title;
  int count = 0;

  HomePageState({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            child: Text("$title - $count"),
            onTap: () {
              setState(() {
                count++;
              });
            }));
  }
}
