import 'package:flutter_material_3/screens/color.screen.dart';
import 'package:flutter_material_3/screens/components.screen.dart';
import 'package:flutter_material_3/screens/elevation.screen.dart';
import 'package:flutter_material_3/screens/typography.screen.dart';
import 'package:go_router/go_router.dart';

class AppService {
  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: ComponentsScreen.routeName,
        name: ComponentsScreen.routeName,
        builder: (context, state) => const ComponentsScreen(),
      ),
      GoRoute(
        path: ColorScreen.routeName,
        name: ColorScreen.routeName,
        builder: (context, state) => const ColorScreen(),
      ),
      GoRoute(
        path: TypographyScreen.routeName,
        name: TypographyScreen.routeName,
        builder: (context, state) => const TypographyScreen(),
      ),
      GoRoute(
        path: ElevationScreen.routeName,
        name: ElevationScreen.routeName,
        builder: (context, state) => const ElevationScreen(),
      ),
    ],
  );
  static GoRouter get router => _router;
}
