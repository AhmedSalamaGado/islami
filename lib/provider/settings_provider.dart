import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class settingsProvider extends ChangeNotifier{
  String currentLocal ="en";
  ThemeMode currentTheme = ThemeMode.light;
  changeLocal(String newLocal)
  async{
    final prefs = await SharedPreferences.getInstance();
    if(newLocal==currentLocal)return;
    currentLocal=newLocal;
    prefs.setString("language", currentLocal);
    notifyListeners();
  }
  changeThema(ThemeMode newTheme)
  async{
    final prefs = await SharedPreferences.getInstance();
    if(currentTheme==newTheme)return;
    currentTheme=newTheme;
    prefs.setString("theme",currentTheme==ThemeMode.dark?"dark":"light");
    notifyListeners();
  }
}