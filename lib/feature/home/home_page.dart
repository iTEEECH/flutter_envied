import 'package:flutter/material.dart';
import 'package:flutter_envied/config/environment.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final Environment environment = Environment();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(environment.apiName),
            const SizedBox(height: 4.0),
            Text(environment.apiVersion),
          ],
        ),
      ),
    );
  }
}
