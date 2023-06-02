import 'package:flutter_envied/config/prod_env.dart';

import 'dev_env.dart';
import 'env.dart';

abstract class Environment implements Env {
  factory Environment() => _instance;

  static late final Environment _instance;

  static void init() {
    const String env = String.fromEnvironment('env');

    _instance = switch (env) {
      'dev' => DevEnv(),
      'prod' => ProdEnv(),
      _ => DevEnv(),
    };
  }
}
