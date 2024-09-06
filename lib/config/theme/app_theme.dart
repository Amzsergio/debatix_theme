import 'package:flutter/material.dart';

final List<Color> themeColors = [
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purple,
];

class AppTheme {
  final bool isDarkmode;
  final int selectedColor;

  AppTheme({
    required this.isDarkmode,
    required this.selectedColor,
  })  : assert(selectedColor >= 0, 'selected color must be greater then 0'),
        assert(themeColors.length > selectedColor,
            'selected color must be either equal or smaller than ${themeColors.length - 1}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: themeColors[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
      );
}
