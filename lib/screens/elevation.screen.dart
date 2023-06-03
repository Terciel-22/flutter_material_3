import 'package:flutter/material.dart';
import 'package:flutter_material_3/widgets/my.bottomnavigationbar.dart';

class ElevationScreen extends StatelessWidget {
  static const routeName = '/elevation';
  const ElevationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(currentIndex: 3),
    );
  }
}
