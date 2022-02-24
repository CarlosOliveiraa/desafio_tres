import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String get apiKey => _get('apiKey');
  static String get authDomain => _get('authDomain');
  static String get projectId => _get('projectId');
  static String get storageBucket => _get('storageBucket');
  static String get messagingSenderId => _get('messagingSenderId');
  static String get appId => _get('appId');
  static String get measurementId => _get('measurementId');

  static String _get(String name) => dotenv.env[name] ?? '';
}
