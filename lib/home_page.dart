import 'package:flutter/material.dart';
import 'package:hello_world/components/customSwitch.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/58826355?v=4'),
                ),
                accountName: const Text('Matheus Oliveira Santos'),
                accountEmail: const Text('matheus@mail.com'),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Inicio'),
                subtitle: const Text('Tela de inicio'),
                onTap: () {
                  print('OPA');
                },
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('Sair'),
                subtitle: const Text('Fazer loggout'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Text("Count: $count"),
            const CustomSwitch(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            _incrementCount();
          }),
    );
  }
}
