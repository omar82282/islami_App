import 'package:flutter/material.dart';
import 'package:islami_aou/ahadeth_screen.dart';
import 'package:islami_aou/home_screen.dart';
import 'package:islami_aou/sura_details_screen.dart';
import 'my_theme_data.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (BuildContext) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        AhadethScreen.roteName: (context) => AhadethScreen()

      },
    );
  }
}
