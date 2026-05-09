import 'package:flutter/material.dart';

class InterestCalculator extends StatefulWidget {
  InterestCalculator({super.key});

  @override
  State<InterestCalculator> createState() {
    _InterestCalculatorState i1 = new _InterestCalculatorState();
    return i1;
  }
}

class _InterestCalculatorState extends State<InterestCalculator> {

  int selectedYear = 1;
  final List<int> years = [1,2,3,4,5,6,7,8,9,10];

  // controllers
  TextEditingController amountController = new TextEditingController();
  TextEditingController rateController = new TextEditingController();

  int amount = 0;
  double rate = 0.0;
  double interest = 0.0;

  @override
  void initState() {
    super.initState();

    // amount listener
    amountController.addListener(() {
      if (amountController.text.trim().length > 0) {
        try {
          amount = int.parse(amountController.text.toString());
        } catch (e) {
          amount = 0;
        }
      }
    });

    // rate listener (FIXED)
    rateController.addListener(() {
      if (rateController.text.trim().length > 0) {
        try {
          rate = double.parse(rateController.text.toString());
        } catch (e) {
          rate = 0.0;
        }
      }
    });
  }

  @override
  void dispose() {
    amountController.dispose();
    rateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interest calculator"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 350,
          child: Card(
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  Text(
                    "Enter Details",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),

                  SizedBox(height: 10),

                  TextFormField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Amount',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 10),

                  TextFormField(
                    controller: rateController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Interest Rate',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 10),

                  DropdownButtonFormField<int>(
                    value: selectedYear,
                    hint: const Text('Select year'),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    ),
                    items: years.map((int item) {
                      return DropdownMenuItem<int>(
                        value: item,
                        child: Text(item.toString()),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedYear = newValue!;
                      });
                    },
                  ),

                  SizedBox(height: 10),

                  Expanded(
                    child: MaterialButton(
                      color: Colors.pink,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          print(amount);
                          print(rate);
                          print(selectedYear);

                          interest = (amount * rate * selectedYear) / 100;
                        });
                      },
                      child: Text("Calculate Interest"),
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Interest = $interest",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}