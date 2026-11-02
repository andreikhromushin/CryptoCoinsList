import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: .dark,
    primary: Colors.yellow,
    onPrimary: Colors.black,
    secondary: Colors.yellow,
    onSecondary: Colors.black,
    surface: .fromARGB(255, 31, 31, 31),
    onSurface: Colors.white,
    error: Colors.red,
    onError: Colors.white,
  ),
  textTheme: TextTheme(
    bodyMedium: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: .w500,
    ),
    labelSmall: TextStyle(
      color: Colors.white.withValues(alpha: 0.6),
      fontSize: 14,
      fontWeight: .w700,
    ),
  ),
  dividerTheme: const DividerThemeData(color: Colors.white24),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  appBarTheme: const AppBarTheme(
    backgroundColor: .fromARGB(255, 31, 31, 31),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: .w700,
    ),
  ),
);
