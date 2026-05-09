import 'package:flutter/material.dart';

class demo2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          alignment: Alignment.center,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text("the easy learn acadmy",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
            ),
            ),
          ),
        ),
      ),
    );
  }
}
