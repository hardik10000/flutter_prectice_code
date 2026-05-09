import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class demo14 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Listview "),
        ),
        body: ListView(
          children: [
            Card(
              elevation: 10,
              child: ListTile(
                title: Text("India - bharat"),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("dilli"),
                    Text("Rupees"),
                ],
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png?20240827082344"),
                ),
                trailing: Icon(Icons.favorite),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                title: Text("Russia"),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("moscow"),
                    Text("Ruble"),
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/f/f3/Flag_of_Russia.svg/1200px-Flag_of_Russia.svg.png"),
                ),
                trailing: Icon(Icons.favorite),
                ),
              ),
            Card(
              elevation: 10,
              child: ListTile(
                title: Text("America"),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Washington"),
                    Text("Doller"),
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png"),
                ),
                trailing: Icon(Icons.favorite),
                ),
              ),
            Card(
              elevation: 10,
              child: ListTile(
                title: Text("United Kingdom"),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("London"),
                    Text("Pound sterling"),
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/1200px-Flag_of_the_United_Kingdom_%281-2%29.svg.png"),
                ),
                trailing: Icon(Icons.favorite),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                title: Text("Germany"),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("barlin"),
                    Text("Euro"),
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/1200px-Flag_of_Germany.svg.png"),
                ),
                trailing: Icon(Icons.healing_sharp),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
