import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:islami/screens/home/hadeth/hadeth_tab.dart';
import 'package:islami/screens/home/quran/quran_tab.dart';
import 'package:islami/screens/home/radio/radio_tab.dart';
import 'package:islami/screens/home/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/screens/home/settings/settings_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selcteditme = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];
  @override
  Widget build(BuildContext context) {
    settingsProvider provider = Provider.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.currentTheme == ThemeMode.light
                  ? 'assets/images/default_bg.png'
                  : 'assets/images/dark_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: (Text(
            AppLocalizations.of(context)!.islami,
          )),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: provider.currentTheme == ThemeMode.light
                  ? mythemedata.primarycolor
                  : mythemedata.primarDarkycolor),
          child: BottomNavigationBar(
            currentIndex: selcteditme,
            onTap: (tabindex) {
              selcteditme = tabindex;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                label: AppLocalizations.of(context)!.ahadeth,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                label: AppLocalizations.of(context)!.sebha,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                label: AppLocalizations.of(context)!.radio,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings,
              ),
            ],
          ),
        ),
        body: tabs[selcteditme],
      ),
    );
  }
}
