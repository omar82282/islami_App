import 'package:flutter/material.dart';
import 'package:islami_aou/my_theme_data.dart';
import 'package:islami_aou/sura_details_screen.dart';
import 'package:islami_aou/sura_model.dart';

class QuranTab extends StatefulWidget {
  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List <String> suraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
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
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Image.asset("assets/images/quran_image.png",
              alignment: Alignment.topCenter),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 2,
          ),
          Text("القرأن"),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 2,
          ),
          Expanded(
            child: ListView.separated(itemBuilder: (BuildContext,index){
              return InkWell(
                onTap: (){
                Navigator.pushNamed(context, SuraDetailsScreen.routeName,
                arguments: SuraModel(sura_name:suraNames[index] ,index: index)
                );

                },
                child: Text("${suraNames[index]}",textAlign: TextAlign.center,
                style:Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold
                )
                  ,),
              );

            },itemCount: suraNames.length,
              separatorBuilder:(BuildContext,index){
              return Divider(thickness: 2,color: MyThemeData.primaryColor,
              endIndent: 60,indent: 60,
              );

            },),
          )
        ],
      ),
    );
  }
}
