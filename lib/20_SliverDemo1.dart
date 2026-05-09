import 'package:flutter/material.dart';

class Sliverdemo1 extends StatelessWidget {

  final List<String> productCategary = [
    'electrinics',
    'book',
    'toys',
    'homeapplicaton',
    'furniture',
    'tv',
    'Groceries',
    'Beauty',
    'Health',
    'Sports',
    'Automotive',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.account_circle),
            title: Text("Sliver Demo"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            ],
            pinned: false,
            snap: true,
            floating: true,
          ),

          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10,
              childAspectRatio: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Card(
                  elevation: 10,
                  child: Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      productCategary[index],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
              childCount: productCategary.length,
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Container(
                  height: 100,
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    productCategary[index],
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
              childCount: productCategary.length,
            ),
          ),
        ],
      ),
    );
  }
}
