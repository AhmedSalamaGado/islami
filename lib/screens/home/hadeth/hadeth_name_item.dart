import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/screens/home/hadeth/hadeth_tab.dart';
import 'package:islami/screens/home/hadeth_details/hadeth_details_screen.dart';

class HadethNameItem extends StatelessWidget {
  hadethmodle hadethname;
  HadethNameItem(this.hadethname);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,arguments:hadethname);
        },
      child: Container(
        child: Column(
          children: [
            Text(
              hadethname.title,
              style: Theme.of(context).textTheme.displayMedium
            ),
            Divider(
              thickness: 2,
              color: mythemedata.primarycolor,
            ),
          ],
        ),
      ),
    );
  }
}
