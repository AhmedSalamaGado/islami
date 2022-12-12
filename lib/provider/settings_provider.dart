import 'package:flutter/material.dart';

class settingsProvider extends ChangeNotifier{
  String currentLocal ="en";
  ThemeMode currentTheme = ThemeMode.light;
  changeLocal(String newLocal)
  {
    currentLocal=newLocal;
    notifyListeners();
  }
  changeThema(ThemeMode newTheme)
  {
    currentTheme=newTheme;
    notifyListeners();
  }
}