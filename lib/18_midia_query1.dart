import 'package:flutter/material.dart';

class MediaQuery1 extends StatelessWidget {

  double height = 0, width = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width  = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query"),
      ),
      body: displayUI(),
    );
  }

  Widget displayUI() {
    double containerHeight = (height / 4) - 22;

    if (height > width) {
      // Portrait
      return Column(
        children: [
          Container(height: containerHeight, width: double.infinity, color: Colors.red),
          const SizedBox(height: 10),
          Container(height: containerHeight, width: double.infinity, color: Colors.blue),
          const SizedBox(height: 10),
          Container(height: containerHeight, width: double.infinity, color: Colors.green),
          const SizedBox(height: 10),
          Container(height: containerHeight, width: double.infinity, color: Colors.yellow),
        ],
      );
    } else {
      // Landscape
      return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(height: containerHeight, color: Colors.red),
                const SizedBox(height: 10),
                Container(height: containerHeight, color: Colors.blue),
                const SizedBox(height: 10),
                Container(height: containerHeight, color: Colors.green),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Container(height: containerHeight, color: Colors.yellow),
                const SizedBox(height: 10),
                Container(height: containerHeight, color: Colors.orange),
                const SizedBox(height: 10),
                Container(height: containerHeight, color: Colors.purple),
                const SizedBox(height: 10),
                Container(height: containerHeight, color: Colors.pink),
              ],
            ),
          ),
        ],
      );
    }
  }
}
