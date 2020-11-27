import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int weight = 3;
  int height = 49;
  double bmi = 0;

  String calculate() {
    setState(() {
      bmi = weight / pow(height / 100, 2);
      return bmi.toStringAsFixed(1);
    });
  }

  String getResult() {
    if (bmi >= 25) {
      return 'OverWeight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else if (bmi > 1) {
      return 'UnderWeight';
    } else {
      return 'Result';
    }
  }

  String getDesciption() {
    if (bmi >= 25) {
      return 'You Have a higher the then Normal body weight, Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have A normal body weigth. good job';
    } else if (bmi >= 1) {
      return 'You can eat bit more';
    }  else {
      return 'Descripsi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextField(
              onChanged: (value) {
                height = int.parse(value);
              },
              decoration: InputDecoration(hintText: 'Height'),
            ),
            SizedBox(height: 20),
            TextField(
                onChanged: (value) {
                  weight = int.parse(value);
                },
                decoration: InputDecoration(hintText: 'Weight'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: calculate,
              child: Text("CALCULATE"),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(getResult()),
                  SizedBox(height: 20),
                  Text(getDesciption()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
