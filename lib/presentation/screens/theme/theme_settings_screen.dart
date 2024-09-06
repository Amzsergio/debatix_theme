import 'package:debatix/config/menu/menu.dart';
import 'package:debatix/config/menu/theme/theme_menu.dart';
import 'package:debatix/presentation/providers/theme_providers.dart';
import 'package:debatix/presentation/widgets/custom_menu_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSettingsScreen extends ConsumerWidget {
  static const name = 'theme-settings';
  const ThemeSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkmode = ref.watch(isDarkmodeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme settings'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(isDarkmodeProvider.notifier).update((state) => !state);
            },
            icon: Icon(
              isDarkmode ? Icons.dark_mode_rounded : Icons.light_mode_outlined,
            ),
          )
        ],
      ),
      body: const _ThemeSettingsView(),
    );
  }
}

class _ThemeSettingsView extends StatelessWidget {
  const _ThemeSettingsView();

  @override
  Widget build(BuildContext context) {
    final List<MenuItem> menuItems = settingsMenuItems;
    return ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: ((context, index) {
          final menuItem = menuItems[index];
          return CustomMenuTile(menuItem: menuItem);
        }));
  }
}
