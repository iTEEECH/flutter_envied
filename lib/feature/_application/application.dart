import 'package:flutter/material.dart';

import '../home/home_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Envied Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Flutter Envied Home Page'),
    );
  }
}
