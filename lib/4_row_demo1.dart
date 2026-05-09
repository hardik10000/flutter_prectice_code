import 'package:flutter/material.dart';

class demo4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          color: Colors.grey.withOpacity(0.5),
          padding: EdgeInsets.all(10),
          height: 300,
          width: 300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlutterLogo(size: 50,),
              FlutterLogo(size: 50,),
              FlutterLogo(size: 50,),
              FlutterLogo(size: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
