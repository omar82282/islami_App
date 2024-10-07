import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_aou/sura_model.dart';
import 'my_theme_data.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetailsScreen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraModel args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: MyThemeData.blackColor)),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 6,
              color: MyThemeData.whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "سوره ${args.sura_name} ",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: MyThemeData.primaryColor,
                    endIndent: 50,
                    indent: 50,
                    thickness: 1,
                  ),
                  Expanded(
                      child: ListView.separated(
                          itemBuilder: (BuildContext, int value) {
                            return Text(
                              "${verses[value]} (${value + 1})",
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w100),
                            );
                          },
                          separatorBuilder: (BuildContext, value) {
                            return Divider(
                              color: MyThemeData.primaryColor,
                              endIndent: 50,
                              indent: 50,
                              thickness: 2,
                            );
                          },
                          itemCount: verses.length))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  loadFile(int index) async {
    String file = await rootBundle
        .loadString("assets/files/sura_details/${index + 1}.txt");
    List<String> lines = file.split("\n");
    verses = lines;
    setState(() {});
  }
}
