import 'package:flutter/material.dart';

class demo7 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(color: Colors.blue,child: Text("Line 1"),),
            Container(color: Colors.green,child: Text("Line 2"),),
            Container(color: Colors.red,child: Text("Line 3"),),
          ],
        ),
      ),
    );
  }
}
