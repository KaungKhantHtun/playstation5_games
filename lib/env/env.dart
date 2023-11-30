// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env.dev')
abstract class Env {
  @EnviedField(varName: 'APIKEY', obfuscate: true)
  static String apiKey = _Env.apiKey;
}
