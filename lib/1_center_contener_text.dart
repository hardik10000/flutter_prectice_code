import 'package:flutter/material.dart';

class demo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
          child: Text("Vavdiya Hardik",
            style: TextStyle(
              color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
    );
  }
}
