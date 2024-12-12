import 'package:flutter/material.dart';
import 'package:islami_app/models/mytheme_data.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/sura_details_screen.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.id : (context) => HomeScreen(),
        SuraDetailsScreen.id : (context) => SuraDetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
      darkTheme: MythemeData.darkTheme,
      themeMode:ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}