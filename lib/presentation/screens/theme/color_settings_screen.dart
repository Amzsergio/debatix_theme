import 'package:flutter/material.dart';

class ColorSettingsScreen extends StatelessWidget {
  static const name = 'Color-settings';
  const ColorSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color Settings'),
        ),
        body: const _ColorSettingsScreen());
  }
}

class _ColorSettingsScreen extends StatelessWidget {
  const _ColorSettingsScreen();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
