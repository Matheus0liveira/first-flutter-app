import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() {
    // ignore: no_logic_in_create_state
    return HomePageState(title: title);
  }
}

class HomePageState extends State<HomePage> {
  final String title;
  int count = 0;

  HomePageState({required this.title});

  _incrementCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
          height: 200,
          width: 200,
          color: Colors.green,
          child: Center(
            child: Container(height: 100, width: 100, color: Colors.red),
          )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            _incrementCount();
          }),
    );
  }
}
