import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class mythemedata{

 static Color primarycolor=Color(0xffB7935F);
 static Color primarDarkycolor=Color(0xff141A2E);
 static Color accentcolor=Color(0xff242424);
 static ThemeData lightmode = ThemeData (
  primaryColor: mythemedata.primarycolor,
  accentColor: mythemedata.accentcolor,
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
   titleTextStyle: TextStyle(
       fontSize: 24,
       fontWeight: FontWeight.bold,
       color: mythemedata.accentcolor) ,
   centerTitle: true,
   backgroundColor: Colors.transparent,
   elevation: 0,
  ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
     selectedItemColor: mythemedata.accentcolor,
    ),
   textTheme:TextTheme(
     bodyMedium: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: accentcolor),
     labelMedium: TextStyle(fontSize: 18,color: accentcolor),
   )
 );
 static ThemeData darkMode = ThemeData (
     primaryColor: mythemedata.primarDarkycolor,
     accentColor: mythemedata.primarycolor,
     scaffoldBackgroundColor: Colors.transparent,
     appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white) ,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
     ),
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
     ),
     textTheme:TextTheme(
       bodyMedium: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: primarDarkycolor),
       labelMedium: TextStyle(fontSize: 18,color: primarDarkycolor),
     )
 );


}