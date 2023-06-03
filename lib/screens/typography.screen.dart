import 'package:flutter/material.dart';
import 'package:flutter_material_3/widgets/my.bottomnavigationbar.dart';

class TypographyScreen extends StatelessWidget {
  static const routeName = '/typography';
  const TypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(currentIndex: 2),
    );
  }
}
