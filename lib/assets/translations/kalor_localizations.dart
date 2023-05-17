import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class KalorLocalizations {
  static List<LocalizationsDelegate<dynamic>> get localizationsDelegates => [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ];

  static List<Locale> get supportedLocales => const [
        Locale('en', ''),
        Locale('es', ''),
      ];
}
