import 'package:flutter/material.dart';

class demo3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
              color: Colors.black38,
              width: 1.7,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
              //  offset: Offset(0,10),
              ),
            ],
            // borderRadius: BorderRadius.circuler(200)
          ),
          child: Align(
            alignment: AlignmentGeometry.center,
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
