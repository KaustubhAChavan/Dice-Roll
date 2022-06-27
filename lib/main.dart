import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.teal,
        appBar: AppBar(

          title: const Text('Dice'),
          backgroundColor: Colors.teal,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicebutton=1;
  int rightdicebutton=1;

  void changediceface()
  {
    setState((){
      leftdicebutton=Random().nextInt(6) + 1;
      rightdicebutton=Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
              changediceface();
              },
              child: Image.asset('images/dice$leftdicebutton.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changediceface();
              },
              child: Image.asset('images/dice$rightdicebutton.png'),

            ),
          ),
        ],
      ),
    );
  }
  }



