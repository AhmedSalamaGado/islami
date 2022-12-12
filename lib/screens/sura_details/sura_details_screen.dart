import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/screens/sura_details/sura_details_arguments.dart';

class SuraDetailsScreen extends StatefulWidget {
  static String routeName = "SuraDetailsScreen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> suraline = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as suradetailsarguments;
    if (suraline.isEmpty) readfile(args.fileName);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: (Text(
              args.suraName,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: mythemedata.accentcolor),
            )),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: ListView.builder(
            itemCount: suraline.length,
              itemBuilder: (context, index) => Column(
                children: [
                  Text(" ${suraline[index]}"
                    ,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: mythemedata.accentcolor),
                        textAlign: TextAlign.center,
                      ),
                  Divider(thickness: 1.2,color: mythemedata.primarycolor,)
                ],
              ))),
    );
  }

  readfile(String filename) async {
    String filecontent = await rootBundle.loadString("assets/quran/$filename");
    suraline = filecontent.split("\n");
    setState(() {});
  }
}
