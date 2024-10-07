import 'package:flutter/material.dart';
import 'package:islami_aou/my_theme_data.dart';
import 'package:islami_aou/tabs/ahadeth_tab.dart';
import 'package:islami_aou/tabs/quran_tab.dart';
import 'package:islami_aou/tabs/radio_tab.dart';
import 'package:islami_aou/tabs/sebha_tab.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName="HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int index=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/background.png"
        ,fit: BoxFit.fill,width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: MyThemeData.blackColor
              )
            ),

          ),
          bottomNavigationBar: BottomNavigationBar(


              currentIndex: index,
              onTap:(value){
              index=value;
              setState(() {
              });

              } ,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
                label: "Quran",
                backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha_blue.png"))
                ,label: "Sebha", backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha_icon.png"))
                ,label: "Ahadeth", backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio_blue.png"))
                    ,label: "Radio", backgroundColor: MyThemeData.primaryColor),
              ],




          ),

          body: tabs[index],
        ),
      ],
    );
  }
List <Widget> tabs=[
  QuranTab(),
  SebhaTab(),
  AhadethTab(),
  RadioTab(),
];
}
