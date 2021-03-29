import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController yearController = new TextEditingController();
  TextEditingController heightController = new TextEditingController();
  TextEditingController weightController = new TextEditingController();
  TextEditingController waistController = new TextEditingController();
  int _value = 1, _value1 = 1, _value2 = 1, _value3 = 1;
  int year = 0;
  double height = 0, weight = 0, waist = 0;
  double absi = 0.0, bmi = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Container(
          width: 300,
          height: 480,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Sex",
                      style: TextStyle(fontSize: 18),
                    ),
                    width: 200,
                    height: 30,
                    color: Colors.blueGrey[50],
                  ),
                  Container(
                    width: 80,
                    height: 30,
                    color: Colors.blueGrey[50],
                    child: DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text("Male"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Female"),
                            value: 2,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Age", style: TextStyle(fontSize: 18)),
                    width: 160,
                    height: 30,
                    color: Colors.blueGrey[50],
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    color: Colors.blueGrey[50],
                    child: TextField(
                      controller: yearController,textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 30,
                    color: Colors.blueGrey[50],
                    child: Text("years", style: TextStyle(fontSize: 18)),
                  )
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Text(
                        "Height",
                        style: TextStyle(fontSize: 18),
                      ),
                      width: 160,
                      height: 30,
                      color: Colors.blueGrey[50]),
                  Container(
                    width: 50,
                    height: 30,
                    color: Colors.blueGrey[50],
                    child: TextField(
                      controller: heightController,textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    color: Colors.blueGrey[50],
                    child: DropdownButton(
                        value: _value1,
                        items: [
                          DropdownMenuItem(
                            child: Text("cm"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("m"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("in"),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text("ft"),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text("ft/in"),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text("m/cm"),
                            value: 6,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value1 = value;
                          });
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Weight",
                      style: TextStyle(fontSize: 18),
                    ),
                    width: 150,
                    height: 30,
                    color: Colors.blueGrey[50],
                  ),
                  Container(
                    width: 60,
                    height: 30,
                    color: Colors.blueGrey[50],
                    child: TextField(
                      controller: weightController,textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    color: Colors.blueGrey[50],
                    child: DropdownButton(
                        value: _value2,
                        items: [
                          DropdownMenuItem(
                            child: Text("kg"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("lb"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("stone"),
                            value: 3,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value2 = value;
                          });
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Waist Circumference",
                      style: TextStyle(fontSize: 16),
                    ),
                    width: 160,
                    height: 30,
                    color: Colors.blueGrey[50],
                  ),
                  Container(
                    width: 50,
                    height: 30,
                    color: Colors.blueGrey[50],
                    child: TextField(
                      controller: waistController,textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    color: Colors.blueGrey[50],
                    child: DropdownButton(
                        value: _value3,
                        items: [
                          DropdownMenuItem(
                            child: Text("cm"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("m"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("in"),
                            value: 3,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value3 = value;
                          });
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      child: Text("Calculate"),
                      onPressed: cal,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Result",
                      style: TextStyle(fontSize: 18),
                    ),
                    width: 280,
                    height: 30,
                    color: Colors.blueGrey[200],
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "ABSI",
                      style: TextStyle(fontSize: 18),
                    ),
                    width: 200,
                    height: 30,
                    color: Colors.blueGrey[50],
                  ),
                  Container(
                    child: Text(absi.toStringAsFixed(4),
                        style: TextStyle(fontSize: 18)),
                    width: 80,
                    height: 30,
                    color: Colors.blueGrey[50],
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "ABSI z-score",
                      style: TextStyle(fontSize: 18),
                    ),
                    width: 280,
                    height: 30,
                    color: Colors.blueGrey[50],
                  ),
                ],
              ),
            ], //children
          ),
        ),
      )),
    );
  }

  void cal() {
    setState(() {
      double h = double.parse(heightController.text);
      double w = double.parse(weightController.text);
      double wc = double.parse(waistController.text);
      if (_value1 == 1) {
        h = h / 100;
      } else if (_value1 == 3) {
        h = h / 39.37;
      } else if (_value1 == 4) {
        h = h / 3.281;
      }
      if (_value2 == 2) {
        w = w / 2.205;
      } else if (_value2 == 3) {
        w = w / 0.1574;
      }
      if (_value3 == 1) {
        wc = wc / 100;
      } else if (_value3 == 3) {
        wc = wc / 39.37;
      }

      bmi = w / (h * h);
      absi = wc / (pow(bmi, 2 / 3) * pow(h, 1 / 2));
      print(absi);
    });
  }
}
