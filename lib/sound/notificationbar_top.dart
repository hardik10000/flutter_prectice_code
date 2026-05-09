import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void showTopNotification(BuildContext context) {
    OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 40,
        left: 10,
        right: 10,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Top Notification 🔔",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(overlayEntry);

    Future.delayed(Duration(seconds: 3), () {
      overlayEntry.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Top Notification")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showTopNotification(context),
          child: Text("Show Top Notification"),
        ),
      ),
    );
  }
}
