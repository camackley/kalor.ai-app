import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

const surfaceDarkTint = Color(0xFFD0BCFF);
const surfaceLightTint = Color(0xFF6750A4);

class ISurface {
  final Color one;

  ISurface({required this.one});
}

class IKalorColors {
  final ISurface surface;

  IKalorColors({required this.surface});
}

class KalorColors {
  late BuildContext _context;

  KalorColors(BuildContext context) {
    _context = context;
  }

  static KalorColors get instance => GetIt.instance<KalorColors>();

  bool get isDarkMode => MediaQuery.of(_context).platformBrightness == Brightness.dark;

  IKalorColors get _dark => IKalorColors(
        surface: ISurface(one: Color.lerp(Theme.of(_context).colorScheme.surface, surfaceDarkTint, 0.05)!),
      );

  IKalorColors get _light => IKalorColors(
        surface: ISurface(one: Color.lerp(Theme.of(_context).colorScheme.surface, surfaceLightTint, 0.05)!),
      );

  IKalorColors get colors => isDarkMode ? _dark : _light;
}
