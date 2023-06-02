import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shahrazad_app/pages/Item%20page.dart';
import 'package:shahrazad_app/pages/LoginScreen.dart';
import 'package:shahrazad_app/pages/homePageScreen.dart';
import 'package:shahrazad_app/pages/welcome%20screen.dart';
import 'package:shahrazad_app/theme/theme%20services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: ThemeService().mode,
      home: WelcomeScreen(),

    );
  }
}
