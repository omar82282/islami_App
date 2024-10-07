import 'package:flutter/material.dart';
import 'package:islami_aou/my_theme_data.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int index = 0;
  double angle=0;
  List<String> text = ["سبحان الله", "الحمد لله", "الله اكبر"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: InkWell(
                onTap: onTap,
                child: Transform.rotate(
                  angle:angle ,
                  child: Image.asset(
                    "assets/images/sebha_image.png",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("عدد التسبيحات"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "$counter",
                      style: TextStyle(color: Colors.white),
                    )),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: MyThemeData.primaryColor,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    child: Text(
                      text[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        color: MyThemeData.primaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTap() {
    angle+=0.5;
    if (counter == 33) {
      counter = 0;
      index++;
      if (index == 3) (index = 0);
    }
    counter++;
    setState(() {});
  }
}
