import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailForm = '';
  String passwordForm = '';

  _body() {
    return SingleChildScrollView(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  const SizedBox(height: 40),
                  TextField(
                    onChanged: (text) {
                      emailForm = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    onChanged: (text) {
                      passwordForm = text;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      if (emailForm == 'matheus@mail.com' &&
                          passwordForm == '123') {
                        Navigator.of(context).pushReplacementNamed('/home');
                      }
                    },
                    child: const Text('Entrar'),
                  )
                ],
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/bg.avif', fit: BoxFit.cover),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          _body()
        ],
      ),
    );
  }
}
