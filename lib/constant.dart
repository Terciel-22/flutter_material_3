import 'package:flutter/material.dart';

const double narrowScreenThreshold = 600;
const double mediumWidthBreakpoint = 1000;
const double largeWidthBreakpoint = 1500;

const double transitionLength = 500;

//Let the user decide where the color scheme should come from.
enum ColorSelectionMethod {
  colorSeed,
  image,
}

//Different ColorSeeds
enum ColorSeed {
  baseColor('M3 Baseline', Color(0xff6750a4)),
  indigo('Indigo', Colors.indigo),
  blue('Blue', Colors.blue),
  teal('Teal', Colors.teal),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  pink('Pink', Colors.pink);

  const ColorSeed(this.label, this.color);
  final String label;
  final Color color;
}

//Different Images
enum ColorImageProvider {
  leaves('Leaves', 'assets/images/content_based_color_scheme_1.png'),
  peonies('Peonies', 'assets/images/content_based_color_scheme_2.png'),
  bubbles('Bubbles', 'assets/images/content_based_color_scheme_3.png'),
  seaweed('Seaweed', 'assets/images/content_based_color_scheme_4.png'),
  seagrapes('Sea Grapes', 'assets/images/content_based_color_scheme_5.png'),
  petals('Petals', 'assets/images/content_based_color_scheme_6.png');

  const ColorImageProvider(this.label, this.path);
  final String label;
  final String path;
}

enum ScreenSelected {
  component(0),
  color(1),
  typography(2),
  elevation(3);

  const ScreenSelected(this.value);
  final int value;
}
