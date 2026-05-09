import 'package:flutter/material.dart';

class Demo16 extends StatelessWidget {

  final List<Map<String, String>> students = [
    {
      "name": "Arav patel",
      "rollno": "1",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/1/200",
    },
    {
      "name": "Jay patel",
      "rollno": "2",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/2/200",
    },
    {
      "name": "Akash patel",
      "rollno": "3",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/3/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
    {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    }, {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    }, {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    }, {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    }, {
      "name": "Ram kathi",
      "rollno": "4",
      "dob": "2008-01-12",
      "gender": "male",
      "photo": "https://picsum.photos/seed/4/200",
    },
  ];
  Widget displayStudent(Map<String, String> item) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(item['photo']!),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item['name']!, textScaleFactor: 1.2),
          Text("Roll: ${item['rollno']}", textScaleFactor: 1.2),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item['dob']!, textScaleFactor: 1.1),
          Text(item['gender']!, textScaleFactor: 1.1),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Demo 3"),
        ),
        body: Card(
          elevation: 10,
          child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              return displayStudent(students[index]);
            },
          ),
        ),
      ),
    );
  }
}
