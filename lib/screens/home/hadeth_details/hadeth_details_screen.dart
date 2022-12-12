 import 'package:flutter/material.dart';
 import 'package:flutter/services.dart';
 import 'package:islami/MyThemeData.dart';
import 'package:islami/screens/home/hadeth/hadeth_tab.dart';
 import 'package:islami/screens/sura_details/sura_details_arguments.dart';

 class HadethDetailsScreen extends StatefulWidget {
   static String routeName="HadethDetailsScreen";

   @override
   State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
 }

 class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
   List<String> suraline = [];

   @override
   Widget build(BuildContext context) {
     var args =
     ModalRoute.of(context)!.settings.arguments as hadethmodle;
     return Container(
       decoration: BoxDecoration(
           image: DecorationImage(
               image: AssetImage('assets/images/default_bg.png'),
               fit: BoxFit.fill)),
       child: Scaffold(
           backgroundColor: Colors.transparent,
           appBar: AppBar(
             title: (Text(
               args.title,
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
                   Text(args.content
                     ,
                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: mythemedata.accentcolor),
                     textAlign: TextAlign.center,
                   ),
                   Divider(thickness: 1.2,color: mythemedata.primarycolor,)
                 ],
               ))),
     );
   }


 }
