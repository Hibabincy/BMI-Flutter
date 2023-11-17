import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController _height = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  double result = 0;

  void bmicalculator() {
    double Height = double.parse(_height.text) / 100;
    double Weight = double.parse(_weight.text);
    double HeightSquar = Height * Height;

     result = Weight / HeightSquar;
     setState(() {

     });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _height,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.trending_up, color: Colors.pinkAccent),
                labelText: 'height in cm',
                labelStyle: TextStyle(color: Colors.pinkAccent),
                hintText: 'your height',
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.pinkAccent))),
          ),
          TextField(
            controller: _weight,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.line_weight, color: Colors.pinkAccent),
                labelText: 'weight in kg',
                labelStyle: TextStyle(color: Colors.pinkAccent),
                hintText: 'your weight',
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.pinkAccent))),
          ),
          ElevatedButton(
            onPressed: () {
              bmicalculator();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.pinkAccent,
            ),
            child: Text('Calculate'),
          ),
          Text(result.toStringAsFixed(2))
        ],
      ),
    );
  }
}
