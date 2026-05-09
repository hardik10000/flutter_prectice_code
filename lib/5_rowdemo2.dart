import 'package:flutter/material.dart';

class demo6 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          color: Colors.green.withOpacity(0.7),
          padding: EdgeInsets.all(10),
          height: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: Text("one")),
              Expanded(child: Text("two")),
              Expanded(child: Text("one")),
              Expanded(child: Text("two")),
            ],
          ),
        ),
      ),
    );
  }
}
