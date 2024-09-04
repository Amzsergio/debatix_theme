import 'package:debatix/presentation/screens/screens.dart';
import 'package:debatix/presentation/screens/theme/color_settings_screen.dart';
import 'package:debatix/presentation/screens/theme/theme_settings_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: ThemeSettingsScreen.name,
      path: '/theme-settings',
      builder: (context, state) => const ThemeSettingsScreen(),
    ),
    GoRoute(
      name: ColorSettingsScreen.name,
      path: '/color-settings',
      builder: (context, state) => const ColorSettingsScreen(),
    ),
  ],
);
