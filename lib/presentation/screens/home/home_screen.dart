import 'package:debatix/config/menu/home/home_menu.dart';
import 'package:debatix/presentation/widgets/custom_menu_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home';

  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DEBATIX'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final menuItems = homeMenuItems;
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final menuItem = menuItems[index];
        return CustomMenuTile(menuItem: menuItem);
      },
    );
  }
}
