import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:islami/screens/home/hadeth_details/hadeth_details_screen.dart';
import 'package:islami/screens/home/home_screen.dart';
import 'package:islami/screens/sura_details/sura_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => settingsProvider(),
      child: myApp()));
}
class myApp extends StatelessWidget {
  late settingsProvider provider;

  Widget build(BuildContext context) {
    provider=Provider.of(context);
    getvaluefromprefrances();
    return MaterialApp(
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        SuraDetailsScreen.routeName:(_)=>SuraDetailsScreen(),
        HadethDetailsScreen.routeName:(_)=>HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: const[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales:const [
        Locale("en"),
        Locale("ar")
      ],
      locale: Locale(provider.currentLocal),
      theme: mythemedata.lightmode,
      darkTheme: mythemedata.darkMode,
      themeMode: provider.currentTheme,
    );
  }
  void getvaluefromprefrances()
 async {
    final prefs = await SharedPreferences.getInstance();
    provider.currentLocal=prefs.getString("language")??"en";
    if(prefs.getString('theme')=='dark')
      {
        provider.currentTheme=ThemeMode.dark;
      }
    else if(prefs.getString('theme')=='light')
    {
      provider.currentTheme=ThemeMode.light;
    }
  }
}

