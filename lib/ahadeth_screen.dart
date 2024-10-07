import 'package:flutter/material.dart';
import 'package:islami_aou/ahadeth_model.dart';
import 'package:islami_aou/my_theme_data.dart';

class AhadethScreen extends StatelessWidget {
  static const String roteName = "AhadethScreen";
  const AhadethScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AhadethModel args =ModalRoute.of(context)?.settings.arguments as AhadethModel;
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
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(

            elevation: 6,
            color: MyThemeData.whiteColor,
            child: Column(

              children: [
                Text("${args.title}",textAlign: TextAlign.center,),
                Divider(

                  color: MyThemeData.primaryColor,endIndent: 50,thickness: 3,
                  indent: 50,

                ),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Text("${args.content} (${index+1})",style:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: MyThemeData.blackColor,
                            fontSize: 20,
                          ),textDirection: TextDirection.rtl

                          ,);
                      },
                      separatorBuilder: (context, index) => Divider(

                        color: MyThemeData.primaryColor,endIndent: 50,thickness: 3,
                        indent: 50,

                      ),
                      itemCount: 2),
                )

              ],
            ),
          ),
        ) ,
      ),
    );
  }
}
