import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  String key = 'isDarkTheme';
  GetStorage box = GetStorage();
  update(bool isDarkTheme) => box.write(key, isDarkTheme);
  read() => box.read<bool>(key) ?? false;
  ThemeMode get mode => read() ? ThemeMode.dark : ThemeMode.light;
  switchTheme() {
    Get.changeThemeMode(read() ? ThemeMode.light : ThemeMode.dark);
    update(!read());
  }
}

class Themes {
  //static Color color = Get.isDarkMode? const Color.fromRGBO(87, 98, 98, 1.0):const Color.fromRGBO(174, 202, 201, 1.0);
  static ThemeData lightTheme = ThemeData(
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(139, 133, 162, 1.0),
          elevation: 100,
          selectedItemColor: Color.fromRGBO(251, 251, 253, 1.0),
          selectedIconTheme: IconThemeData(size: 30),
          selectedLabelStyle: TextStyle(fontSize: 18),
          unselectedItemColor: Color.fromRGBO(235, 235, 240, 1.0)),
      accentColor: const Color.fromRGBO(164, 158, 187, 1.0),
      canvasColor: Colors.black,
      scaffoldBackgroundColor: const Color.fromRGBO(164, 158, 187, 1.0),
      appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(164, 158, 187, 1.0), elevation: 0.0),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Color.fromRGBO(164, 158, 187, 1.0),
        elevation: 0.0,
      ),
      fontFamily: "Lora",
      brightness: Brightness.light);

  static ThemeData darkTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(

        backgroundColor: Color.fromRGBO(10, 3, 35, 1.0),
        elevation: 20,
        selectedItemColor: Color.fromRGBO(251, 251, 253, 1.0),
        selectedIconTheme: IconThemeData(size: 30),
        selectedLabelStyle: TextStyle(fontSize: 18),
        unselectedItemColor: Color.fromRGBO(235, 235, 240, 1.0)),
    accentColor: const Color.fromRGBO(10, 3, 37, 1.0),
    fontFamily: "Lora",
    canvasColor: Colors.white,
    primaryColor: const Color.fromRGBO(12, 3, 46, 1.0),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 5.0,
        backgroundColor: Color.fromRGBO(13, 4, 47, 1.0)),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color.fromRGBO(12, 3, 46, 1.0),
    drawerTheme: const DrawerThemeData(
      backgroundColor: Color.fromRGBO(12, 3, 46, 1.0),
      elevation: 0.0,
    ),
  );
}
