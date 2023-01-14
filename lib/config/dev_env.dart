import 'package:envied/envied.dart';
import 'package:flutter_envied/config/env.dart';

import 'environment.dart';

part 'dev_env.g.dart';

@Envied(name: 'Env', path: 'env/.env_dev', obfuscate: true)
class DevEnv implements Env, Environment {
  DevEnv();

  @override
  @EnviedField(varName: 'API_NAME')
  final String apiName = _Env.apiName;

  @override
  @EnviedField(varName: 'API_VERSION')
  final String apiVersion = _Env.apiVersion;

  @override
  @EnviedField(varName: 'API_KEY')
  final String apiKey = _Env.apiKey;
}
