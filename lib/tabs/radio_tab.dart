import 'package:flutter/material.dart';
import 'package:islami_aou/my_theme_data.dart';

class RadioTab extends StatefulWidget {
  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  bool _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_image.png"), // Add the image here
          SizedBox(
            height: 10,
          ),
          Text("اذاعة القرآن الكريم"),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                onPressed: () {
                  setState(() {
                    _isPlaying = !_isPlaying;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.skip_next),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}