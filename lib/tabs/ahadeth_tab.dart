import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_aou/ahadeth_model.dart';
import 'package:islami_aou/ahadeth_screen.dart';
import 'package:islami_aou/my_theme_data.dart';

class AhadethTab extends StatefulWidget {
  @override
  State <AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List <AhadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Image.asset("assets/images/ahadeth_image.png"),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 2,
        ),
        Text(
          "أحاديث",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {

                return InkWell(
                  onTap:(){

                    Navigator.pushNamed(context, AhadethScreen.roteName,
                    arguments: allAhadeth[index]

                    );

                  },
                  child: Text(allAhadeth[index].title,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,

                  ),
                   textAlign: TextAlign.center,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2,
                  color: MyThemeData.primaryColor,
                  endIndent: 50,
                  indent: 50,
                );
              },
              itemCount: allAhadeth.length),
        )
      ],
    );
  }

  loadFile() {
    rootBundle.loadString("assets/files/ahadeth/ahadeth.txt").then(
      (ahadeth) {
        List<String> ahadethList = ahadeth.split("#");
        for (int i = 0; i < ahadethList.length; i++) {
          String hadethOne = ahadethList[i];
          List<String> hadethOneLines = hadethOne.trim().split("\n");
          String title = hadethOneLines[0];
          hadethOneLines.removeAt(0);
          List<String> content = hadethOneLines;
          allAhadeth.add(AhadethModel(title, content));
        }
        setState(() {});
      },
    );
  }
}
