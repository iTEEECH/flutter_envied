import 'package:envied/envied.dart';
import 'package:flutter_envied/config/environment.dart';

import 'env.dart';

part 'prod_env.g.dart';

@Envied(name: 'Env', path: 'env/.env_prod', obfuscate: true)
class ProdEnv implements Env, Environment {
  ProdEnv();

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
