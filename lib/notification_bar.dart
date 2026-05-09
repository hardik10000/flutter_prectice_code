import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification Bar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("This is a notification! 🚀"),
                backgroundColor: Colors.green,
                duration: Duration(seconds: 3),
                action: SnackBarAction(
                  label: "UNDO",
                  textColor: Colors.white,
                  onPressed: () {
                    print("Undo clicked");
                  },
                ),
              ),
            );
          },
          child: Text("Show Notification"),
        ),
      ),
    );
  }
}
