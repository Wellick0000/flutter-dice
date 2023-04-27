import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftChangeDice = 5, rightChangeDice = 2;
  //function
  void change() {
    setState(() {
      rightChangeDice = Random().nextInt(6) + 1;
      leftChangeDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 1, // to set ratio
            child: TextButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/dice$leftChangeDice.png'),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.all(9),
          // ),
          Expanded(
              // flex: 1, //double or half to set ratio
              child: TextButton(
                  onPressed: () {
                    change();
                  },
                  child: Image.asset('images/dice$rightChangeDice.png'))),
        ],
      ),
    );
  }
}
