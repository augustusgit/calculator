import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:light_calculator/constants.dart';
import 'package:light_calculator/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(LightCalculator());
}

class LightCalculator extends StatelessWidget {

  // static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF22252D),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ValueListenableBuilder<ThemeMode>(
  //       valueListenable: themeNotifier,
  //       builder: (_, ThemeMode currentMode, __) {
  //         return MaterialApp(
  //           // Remove the debug banner
  //           debugShowCheckedModeBanner: false,
  //           title: kTitle,
  //           theme: ThemeData(primarySwatch: Colors.amber,),
  //           darkTheme: ThemeData.dark(),
  //           themeMode: currentMode,
  //           home: HomeScreen(),
  //         );
  //       });
  // }


}
