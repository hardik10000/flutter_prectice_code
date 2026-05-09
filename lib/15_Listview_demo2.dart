import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListViewDemo2 extends StatelessWidget {
  //ListViewDemo2({super.key});

  final List<Map<String, String>> countries = [
    {
      "name": "India",
      "capital": "New Delhi",
      "currency": "Indian Rupee",
      "flag": "https://upload.wikimedia.org/wikipedia/en/4/41/Flag_of_India.svg"
    },
    {
      "name": "United States",
      "capital": "Washington, D.C.",
      "currency": "United States Dollar",
      "flag":
      "https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg"
    },
    {
      "name": "Brazil",
      "capital": "Brasília",
      "currency": "Brazilian Real",
      "flag":
      "https://upload.wikimedia.org/wikipedia/en/0/05/Flag_of_Brazil.svg"
    },
    {
      "name": "Canada",
      "capital": "Ottawa",
      "currency": "Canadian Dollar",
      "flag":
      "https://upload.wikimedia.org/wikipedia/en/c/cf/Flag_of_Canada.svg"
    },
    {
      "name": "United Kingdom",
      "capital": "London",
      "currency": "Pound Sterling",
      "flag":
      "https://upload.wikimedia.org/wikipedia/en/a/ae/Flag_of_the_United_Kingdom.svg"
    },
    {
      "name": "France",
      "capital": "Paris",
      "currency": "Euro",
      "flag":
      "https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg"
    },
    {
      "name": "Germany",
      "capital": "Berlin",
      "currency": "Euro",
      "flag":
      "https://upload.wikimedia.org/wikipedia/en/b/ba/Flag_of_Germany.svg"
    },
    {
      "name": "Russia",
      "capital": "Moscow",
      "currency": "Russian Ruble",
      "flag":
      "https://upload.wikimedia.org/wikipedia/en/f/f3/Flag_of_Russia.svg"
    },
    {
      "name": "China",
      "capital": "Beijing",
      "currency": "Renminbi",
      "flag":
      "https://upload.wikimedia.org/wikipedia/en/f/fa/Flag_of_the_People%27s_Republic_of_China.svg"
    },
    {
      "name": "Japan",
      "capital": "Tokyo",
      "currency": "Japanese Yen",
      "flag":
      "https://upload.wikimedia.org/wikipedia/en/9/9e/Flag_of_Japan.svg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    Widget displayCountry(Map<String, String> item) {
      return SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
          elevation: 8,
          margin: const EdgeInsets.all(8),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: SvgPicture.network(
                  item['flag']!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.black.withOpacity(0.5),
                  child: Text(
                    item['name']!,
                    textScaleFactor: 2.0,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.white.withOpacity(0.6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item['capital']!,
                        textScaleFactor: 1.3,
                      ),
                      Text(
                        item['currency']!,
                        textScaleFactor: 1.3,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Example of ListView"),
        ),
        body: ListView.builder(
          itemCount: countries.length,
          itemBuilder: (context, index) {
            return displayCountry(countries[index]);
          },
        ),
      ),
    );
  }
}
