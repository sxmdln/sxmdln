import 'package:flutter/material.dart';
import 'package:sxmdln_website_flutter/pages/about.dart';
import 'package:sxmdln_website_flutter/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
      title: "A-Check Web",
      theme: ThemeData(
        fontFamily: 'Rubik',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffCDA4FC),
          primary: Colors.white,
        ),
        // highlightColor: Colors.transparent,
        // splashFactory: NoSplash.splashFactory,
        // disabledColor: const Color(0xff153faa),
        // hoverColor: Colors.blueAccent.shade100.withOpacity(0.2),
        // textButtonTheme: TextButtonThemeData(
        //   style: TextButton.styleFrom(foregroundColor: const Color(0xff353535)),
        // ),
        // checkboxTheme: CheckboxThemeData(
        //   fillColor: MaterialStateColor.resolveWith(
        //     (states) {
        //       if (states.contains(MaterialState.selected)) {
        //         return const Color(
        //             0xff153faa); // the color when checkbox is selected;
        //       }
        //       return Colors.white; //the color when checkbox is unselected;
        //     },
        //   ),
        // ),
      ),
      routes: {
        '/home': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
      },
      home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.white, body: HomePage());
  }
}
