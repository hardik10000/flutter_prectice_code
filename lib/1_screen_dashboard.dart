import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Screen 1"),
        ),
        body: Container(
         child: Column(
          mainAxisSize: MainAxisSize.max,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Expanded(child: Card(
                  child: Column(

                  ),
             )),
           ],
         ),
        ),
      ),
    );
  }
}
