import 'package:flutter/material.dart';
import 'package:flutter_material_3/widgets/my.bottomnavigationbar.dart';

class ColorScreen extends StatelessWidget {
  static const routeName = '/color';
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(currentIndex: 1),
    );
  }
}
