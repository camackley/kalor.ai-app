import 'package:flutter/material.dart';

import 'screens/login.dart';
import 'screens/home.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> get routes => {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      };
}
