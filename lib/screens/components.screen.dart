import 'package:flutter/material.dart';
import 'package:flutter_material_3/widgets/my.bottomnavigationbar.dart';

class ComponentsScreen extends StatelessWidget {
  static const routeName = '/';
  const ComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(currentIndex: 0),
    );
  }
}
