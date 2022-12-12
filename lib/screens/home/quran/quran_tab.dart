

import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';
import 'package:islami/screens/home/quran/sura_name_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatelessWidget {
 List<String>suraname=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
   ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
   ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
   ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
   ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
   ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
   ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
   ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
   ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
   "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 3,
              child: Image.asset('assets/images/qur2an_screen_logo.png')),
          Divider(
            thickness: 3,
            color: mythemedata.primarycolor,
          ),
          Text(
            AppLocalizations.of(context)!.suraName,
            style: TextStyle(
                fontSize: 20,
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
                      itemCount: suraname.length,
                      itemBuilder: (context, index) => SuraNameItem(suraname[index],index))),

        ],
      ),
    );
  }
}
