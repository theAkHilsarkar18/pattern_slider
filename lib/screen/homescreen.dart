import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  double myRange = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Patten With Slider",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Slider(
                min: 0,
                max: 20,
                label: "${myRange.toInt()}",
                divisions: 20,
                value: myRange,
                onChanged: (v) {
                  setState(() {
                    myRange = v;
                  });
                },
              ),
              Column(
                children: [
                  for (int i = 1; i <= myRange; i++)
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        for (int j = 1; j <= i; j++) Text("$j  "),
                      ],
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
