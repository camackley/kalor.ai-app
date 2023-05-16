import 'package:flutter/material.dart';

import 'screens/login.dart';
import 'screens/home.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> getRoutes() {
    return {
      '/': (context) => const LoginScreen(),
      '/home': (context) => const HomeScreen(),
    };
  }
}
