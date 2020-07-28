import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDeceNumber=1;
  int rightDeceNumber =1;

  void changeDiceFace(){
    setState(() {
      leftDeceNumber =Random().nextInt(6)+1;
      rightDeceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDeceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
               changeDiceFace();
              },
              child: Image.asset('images/dice$rightDeceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
  }




