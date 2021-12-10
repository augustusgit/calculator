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

  static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: kTitle,
  //     theme: ThemeData(
  //       scaffoldBackgroundColor: Color(0xFF22252D),
  //       visualDensity: VisualDensity.adaptivePlatformDensity,
  //     ),
  //     home: HomeScreen(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            // Remove the debug banner
            debugShowCheckedModeBanner: false,
            title: kTitle,
            theme: ThemeData(
              primarySwatch: Colors.amber,
              primaryColor: Colors.white,
              brightness: Brightness.light,
              backgroundColor: const Color(0xFFE5E5E5),
              dividerColor: Color(0xFFECEAEA),
              hintColor: Color(0xFFE3E2E2),
              primaryColorDark: Color(0xFF22252D),
            ),
            darkTheme: ThemeData(
              primarySwatch: Colors.amber,
              primaryColor: Color(0xFF22252D),
              brightness: Brightness.dark,
              backgroundColor: const Color(0xFF22252D),
              dividerColor: Color(0xFF292D36),
              hintColor: Color(0xFF272B33),
              primaryColorDark: Colors.white60,
              scaffoldBackgroundColor: Color(0xFF22252D),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            themeMode: currentMode,
            home: HomeScreen(),
          );
        });
  }


}
