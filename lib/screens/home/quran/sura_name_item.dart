import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/screens/sura_details/sura_details_arguments.dart';
import 'package:islami/screens/sura_details/sura_details_screen.dart';

class SuraNameItem extends StatelessWidget {
  String suraname;
  int index;
  SuraNameItem(this.suraname,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,arguments: suradetailsarguments(suraname, "${index+1}.txt"));
      },
      child: Container(
        child: Column(
          children: [
            Text(
              suraname,
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: mythemedata.accentcolor),
              textAlign: TextAlign.center,
            ),
            Divider(
              thickness: 1.8,
              color: mythemedata.primarycolor,
            ),
          ],
        ),

      ),
    );
  }
}
