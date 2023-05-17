import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KalorTheme {
  static ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        textTheme: textSchema,
      );

  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        textTheme: textSchema,
      );
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF3E6A00),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFB9F474),
  onPrimaryContainer: Color(0xFF0F2000),
  secondary: Color(0xFF415AA9),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFDCE1FF),
  onSecondaryContainer: Color(0xFF00164E),
  tertiary: Color(0xFF9B442B),
  onTertiary: Color(0xFFE1E4D5),
  tertiaryContainer: Color(0xFFFFDBD1),
  onTertiaryContainer: Color(0xFF3B0900),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD6),
  onErrorContainer: Color(0xFF410002),
  outline: Color(0xFF75796C),
  background: Color(0xFFFDFCF5),
  onBackground: Color(0xFF1B1C18),
  surface: Color(0xFFFAFAF2),
  onSurface: Color(0xFF1B1C18),
  surfaceVariant: Color(0xFFE1E4D5),
  onSurfaceVariant: Color(0xFF44483D),
  inverseSurface: Color(0xFF30312C),
  onInverseSurface: Color(0xFFF2F1E9),
  inversePrimary: Color(0xFF9ED75B),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF3E6A00),
  outlineVariant: Color(0xFFC5C8BA),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF9ED75B),
  onPrimary: Color(0xFF1E3700),
  primaryContainer: Color(0xFF2E4F00),
  onPrimaryContainer: Color(0xFFB9F474),
  secondary: Color(0xFFB5C4FF),
  onSecondary: Color(0xFF062978),
  secondaryContainer: Color(0xFF274190),
  onSecondaryContainer: Color(0xFFDCE1FF),
  tertiary: Color(0xFFFFB5A1),
  onTertiary: Color(0xFF5E1703),
  tertiaryContainer: Color(0xFF7C2D16),
  onTertiaryContainer: Color(0xFFFFDBD1),
  error: Color(0xFFFFB4AB),
  onError: Color(0xFF690005),
  errorContainer: Color(0xFF93000A),
  onErrorContainer: Color(0xFFFFDAD6),
  outline: Color(0xFF8E9285),
  background: Color(0xFF1B1C18),
  onBackground: Color(0xFFE3E3DB),
  surface: Color(0xFF121410),
  onSurface: Color(0xFFC7C7C0),
  surfaceVariant: Color(0xFF44483D),
  onSurfaceVariant: Color(0xFFC5C8BA),
  inverseSurface: Color(0xFFE3E3DB),
  onInverseSurface: Color(0xFF1B1C18),
  inversePrimary: Color(0xFF3E6A00),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF9ED75B),
  outlineVariant: Color(0xFF44483D),
  scrim: Color(0xFF000000),
);

final textSchema = GoogleFonts.robotoTextTheme(
  const TextTheme(
    displayLarge: TextStyle(fontSize: 57, height: 1.12, fontFamily: 'Regular'),
    displayMedium: TextStyle(fontSize: 45, height: 1.16, fontFamily: 'Regular'),
    displaySmall: TextStyle(fontSize: 36, height: 1.2, fontFamily: 'Regular'),
    headlineLarge: TextStyle(fontSize: 32, height: 1.25, fontFamily: 'Regular'),
    headlineMedium: TextStyle(fontSize: 28, height: 1.86, fontFamily: 'Regular'),
    headlineSmall: TextStyle(fontSize: 24, height: 1.33, fontFamily: 'Regular'),
    titleLarge: TextStyle(fontSize: 22, height: 1.23, fontFamily: 'Regular'),
    titleMedium: TextStyle(fontSize: 16, height: 1.5, fontFamily: 'Regular'),
    titleSmall: TextStyle(fontSize: 14, height: 1.43, fontFamily: 'Regular'),
    labelLarge: TextStyle(fontSize: 14, height: 1.43, fontFamily: 'Regular'),
    labelMedium: TextStyle(fontSize: 12, height: 1.33, fontFamily: 'Regular'),
    labelSmall: TextStyle(fontSize: 11, height: 1.45, fontFamily: 'Regular'),
    bodyLarge: TextStyle(fontSize: 16, height: 1.5, fontFamily: 'Regular'),
    bodyMedium: TextStyle(fontSize: 14, height: 1.43, fontFamily: 'Regular'),
    bodySmall: TextStyle(fontSize: 12, height: 1.33, fontFamily: 'Regular'),
  ),
);
