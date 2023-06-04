import 'package:flutter/material.dart';
import 'package:flutter_material_3/screens/home.screen.dart';
import 'constant.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  //Initializing defaults
  bool useMaterial3 = true;
  ThemeMode themeMode =
      ThemeMode.system; //default to the user's system setting.
  ColorSeed colorSelected = ColorSeed.baseColor; //defaults to M3 Baseline
  ColorImageProvider imageSelected =
      ColorImageProvider.leaves; //defaults to leaves
  ColorScheme? imageColorScheme = const ColorScheme
      .light(); //set the imageColorScheme to ColorScheme.light as default.
  ColorSelectionMethod colorSelectionMethod = ColorSelectionMethod
      .colorSeed; //set the ColorSelection method to colorSeed.

  //Getter for using lightmode or not.
  bool get useLightMode {
    //Check if the user system using light mode or dark. if yes, return true. Else, return false.
    switch (themeMode) {
      case ThemeMode.system:
        return View.of(context).platformDispatcher.platformBrightness ==
            Brightness.light;
      case ThemeMode.light:
        return true;
      case ThemeMode.dark:
        return false;
    }
  }

  void handleBrightnessChange(bool useLightMode) {
    //if useLightMode is true, themeMode will be set to ThemeMode.light, else ThemeMode.dark
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

  void handleMaterialVersionChange() {
    //toggle useMaterial3 between true and false.
    setState(() {
      useMaterial3 = !useMaterial3;
    });
  }

  void handleColorSelect(int value) {
    setState(() {
      //set colorSelectionMethod to colorSeed.
      colorSelectionMethod = ColorSelectionMethod.colorSeed;
      //will select new ColorSeed on enum based on index value.
      colorSelected = ColorSeed.values[value];
    });
  }

  void handleImageSelect(int value) {
    //get the path of selected image
    final String path = ColorImageProvider.values[value].path;
    //this is the method for generating new colorScheme base on the image provided
    ColorScheme.fromImageProvider(provider: AssetImage(path)).then((newScheme) {
      setState(() {
        colorSelectionMethod =
            ColorSelectionMethod.image; //set colorSelectionMethod to image
        imageSelected = ColorImageProvider
            .values[value]; //set the image selected to the value selected
        imageColorScheme = newScheme; // set the new color scheme
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //this will not dislay debug mode in upper right of the screen
      title: 'Material 3',
      themeMode: themeMode, //This will set the theme mode.
      theme: ThemeData(
        colorSchemeSeed: colorSelectionMethod == ColorSelectionMethod.colorSeed
            ? colorSelected.color
            : imageColorScheme!.primary,
        colorScheme: colorSelectionMethod == ColorSelectionMethod.image
            ? imageColorScheme
            : null,
        useMaterial3: useMaterial3,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: colorSelectionMethod == ColorSelectionMethod.colorSeed
            ? colorSelected.color
            : imageColorScheme!.primary,
        useMaterial3: useMaterial3,
        brightness: Brightness.dark,
      ),
      home: Home(
        useLightMode: useLightMode,
        useMaterial3: useMaterial3,
        colorSelected: colorSelected,
        imageSelected: imageSelected,
        handleBrightnessChange: handleBrightnessChange,
        handleMaterialVersionChange: handleMaterialVersionChange,
        handleColorSelect: handleColorSelect,
        handleImageSelect: handleImageSelect,
        colorSelectionMethod: colorSelectionMethod,
      ),
    );
  }
}
