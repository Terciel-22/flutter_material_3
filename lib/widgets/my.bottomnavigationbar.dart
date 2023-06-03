import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_material_3/screens/elevation.screen.dart';
import 'package:flutter_material_3/screens/color.screen.dart';
import 'package:flutter_material_3/screens/typography.screen.dart';
import 'package:flutter_material_3/screens/components.screen.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.widgets_outlined),
          activeIcon: Icon(Icons.widgets),
          label: "Components",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.format_paint_outlined),
            activeIcon: Icon(Icons.format_paint),
            label: "Color"),
        BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet_outlined),
            activeIcon: Icon(Icons.text_snippet),
            label: "Typography"),
        BottomNavigationBarItem(
            icon: Icon(Icons.invert_colors_on_outlined),
            activeIcon: Icon(Icons.invert_colors_on),
            label: "Elevation"),
      ],
      onTap: (value) {
        if (value == 0) {
          context.go(ComponentsScreen.routeName);
        } else if (value == 1) {
          context.go(ColorScreen.routeName);
        } else if (value == 2) {
          context.go(TypographyScreen.routeName);
        } else if (value == 3) {
          context.go(ElevationScreen.routeName);
        }
      },
    );
  }
}
