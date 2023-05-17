import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';

import 'assets/styles/color_schemes.g.dart';
import 'src/routes.dart';

const filePath = '/Users/camackley/Documents/Projects/kalor.ai/star_lord';

Future<void> main() async {
  await dotenv.load(fileName: '$filePath/.env');
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const StarLordApp());
}

class StarLordApp extends StatelessWidget {
  const StarLordApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalor.ai',
      debugShowCheckedModeBanner: dotenv.env['STAR_LORD_ENVIRONMENT_MODE'] != 'production',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: ThemeMode.dark,
      initialRoute: '/home',
      routes: Routes.getRoutes(),
    );
  }
}
