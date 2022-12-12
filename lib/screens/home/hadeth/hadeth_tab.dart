import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/screens/home/hadeth/hadeth_name_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<hadethmodle> HadethModels = [];

  @override
  Widget build(BuildContext context) {
    if(HadethModels.isEmpty)
      readahadethfile();
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 3, child: Image.asset("assets/images/hadeth_logo.png")),
          Divider(
            thickness: 3,
            color: mythemedata.primarycolor,
          ),
          Text(
            AppLocalizations.of(context)!.ahadeth,
            style: TextStyle(
                fontSize: 25,
                color: mythemedata.accentcolor,
                fontWeight: FontWeight.bold),
          ),
          Divider(
            thickness: 3,
            color: mythemedata.primarycolor,
          ),
          Expanded(
              flex: 7,
              child:
              ListView.builder(
                  itemCount: HadethModels.length,
                  itemBuilder: (context, index) => HadethNameItem(HadethModels[index+1]))),

        ],
      ),
    );
  }

  readahadethfile() async {
    String filecontent = await rootBundle.loadString("assets/quran/ahadeth .txt");
    List<String> ahadeth = filecontent.split("#\r\n");
    for (int i = 0; i < filecontent.length; i++) {
      print("Ahadeth${ahadeth.length}");
      List<String> hadethsingleline = ahadeth[i].split('\n');
      String title = hadethsingleline[0];
      hadethsingleline.removeAt(0);
      String content = hadethsingleline.join();
      HadethModels.add(new hadethmodle(title, content));
    }
    setState(() {});
  }
 }

class hadethmodle {
  String title;
  String content;
  hadethmodle(this.title, this.content);
}
