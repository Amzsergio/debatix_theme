import 'package:debatix/config/theme/app_theme.dart';
import 'package:debatix/presentation/providers/theme_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorSettingsScreen extends StatelessWidget {
  static const name = 'Color-settings';
  const ColorSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color Settings'),
        ),
        body: const _ColorSettingsView());
  }
}

class _ColorSettingsView extends ConsumerStatefulWidget {
  const _ColorSettingsView();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ColorSettingsViewState();
}

class _ColorSettingsViewState extends ConsumerState<_ColorSettingsView> {
  @override
  Widget build(BuildContext context) {
    final List<Color> colorsList = themeColors;
    final int selectedColor = ref.watch(selectedColorProvider);
    return ListView.builder(
        itemCount: themeColors.length,
        itemBuilder: ((context, index) {
          final color = colorsList[index];
          return RadioListTile(
            title: Text(
              'Este color',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            subtitle: Text(
              '#${color.value}',
              style: TextStyle(color: color),
            ),
            value: index,
            groupValue: selectedColor,
            onChanged: (value) {
              setState(
                () {
                  if (value != null) {
                    ref.read(selectedColorProvider.notifier).state = index;
                  }
                },
              );
            },
          );
        }));
  }
}
