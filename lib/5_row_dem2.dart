import 'package:flutter/material.dart';

class demo5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          //color: Color.red.withOpacity(0.5),
          padding: EdgeInsets.all(10),
          height: 300,
          //width: 500,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: Text("one")),
              Expanded(child: Text("two")),
              Expanded(child: Text("three")),
              Expanded(child: Text("Apple is a fruit")),
            ],
          ),
        ),
      ),
    );
  }
}
