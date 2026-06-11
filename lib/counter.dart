import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {

  int isPresent = 0;
  int isAbsent = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              " Present : $isPresent",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              " Absent : $isAbsent",
              style: TextStyle(fontSize: 30),
            ),


            ElevatedButton(
              onPressed: () {
                setState(() {

                  if(isPresent < 50) {

                    isPresent++;
                    isAbsent--;

                  }

                });
              },
              child: Text("Mark Present"),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                if(isPresent > 0){
                  isPresent--;
                  isAbsent++;
                }
              });
            }, child: Text("Undo"),),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isAbsent = 50;
                  isPresent = 0;
                });
              },
              child: Text("Reset"),
            )

          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:nex_cart/count.dart';
// void main() {
//   runApp( count());
// }
//
// class count extends StatelessWidget {
//   count({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       //title: 'Count app',
//       home: Count(),
//     );
//   }
// }
//
//
//
