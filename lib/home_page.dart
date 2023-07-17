import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

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
  // bool isDarkTheme = false;

  HomePageState({required this.title});

  _incrementCount() {
    setState(() {
      count++;
    });
  }

  // _changeTheme(bool theme) {
  //   setState(() {
  //     isDarkTheme = theme;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: AnimatedBuilder(
          animation: AppController.instance,
          builder: (context, child) {
            return Center(
              child: Switch(
                  value: AppController.instance.isDarkTheme,
                  onChanged: AppController.instance.changeTheme),
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            _incrementCount();
          }),
    );
  }
}
