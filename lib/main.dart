import 'package:flutter/material.dart';
import 'package:flutter_envied/config/environment.dart';
import 'package:flutter_envied/feature/_application/application.dart';

void main() {
  // Intialization environments.
  Environment.init();

  runApp(const Application());
}
