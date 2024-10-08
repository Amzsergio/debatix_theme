import 'package:debatix/config/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomMenuTile extends StatelessWidget {
  final MenuItem menuItem;
  const CustomMenuTile({
    super.key,
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      leading: Icon(
        menuItem.icon,
        color: color.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: color.primary,
      ),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}
