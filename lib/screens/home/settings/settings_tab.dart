
import 'package:flutter/material.dart';
import 'package:islami/screens/home/settings/LanguageBottomSheet.dart';
import 'package:islami/screens/home/settings/ThemeBottomSheet.dart';

class SettingsTab extends StatefulWidget {

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text("Language",style:Theme.of(context).textTheme.bodyMedium,),
        ),
        InkWell(
          onTap: (){
            LanguageBottomSheet();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
            margin: EdgeInsets.all(12),
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("English",textAlign: TextAlign.start,style:Theme.of(context).textTheme.labelMedium,),
                ),
                Spacer(),
                Icon(Icons.arrow_downward),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text("Theme",style:Theme.of(context).textTheme.bodyMedium,),
        ),
        InkWell(
          onTap: (){
            ThemeBottomSheet();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
            margin: EdgeInsets.all(12),
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Light",textAlign: TextAlign.start,style:Theme.of(context).textTheme.labelMedium,),
                ),
                Spacer(),
                Icon(Icons.arrow_downward),
              ],
            ),
          ),
        )
      ],
    );
  }
  void ThemeBottomSheet() {
    showModalBottomSheet(context: context, builder: (context){
      return ThemebottomSheet();
    });
  }

  void LanguageBottomSheet() {
    showModalBottomSheet(context: context, builder: (context){
      return LanguagebottomSheet();
    });
  }

}
