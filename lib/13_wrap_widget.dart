import 'package:flutter/material.dart';
class demo13 extends StatelessWidget {
  String  imgURL = "https://picsum.photos/200";



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("wrap widget demo"),
        ),
        body: Wrap(
          spacing: 8,
          runSpacing: 8,
          runAlignment: WrapAlignment.spaceBetween,
          children: [
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),
            MyContainer(),

          ],
        ),
      ),
    );
  }
  Widget MyContainer() {
    return Container(
      height: 100,
      width: 100,
      child: AspectRatio(aspectRatio: 1,
      child: Image.network(imgURL,fit: BoxFit.cover,),
     ),
    );
  }
}

