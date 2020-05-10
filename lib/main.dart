import 'dart:math';
import 'package:flutter/material.dart';

// Variables and Data types
//
// Variables
//    * Are a container for data.
//    * var myName = 'Daniel';
//    * the var myName is a container for the String 'Daniel'.
//    * print(myName);
//    * In Dart the convection is to use ' instead of ".
//    * To reassign a variable: myName = 'James';
//    * But you can't reassing myName to an int.
//    * Dart has data types
//
// Data types
//    * Dart is a statically type language.
//    * Primitive types:
//      * String > 'Daniel'
//      * Int > 4, 123,
//      * Double > 10.2,
//      * Bool > true, false
//    * There is a way to convert Dart into a "dynamic language"
//    * When you don't specify the type, Dart infers it.
//      * var a; > a is now dynamic
//      * a = 123; > now holds a number
//      * a = 'Hi'; > now holds a string
//      * Dart has a "dynamic" type.
//        * String a = 'Hello';
//        * int b = 42;
//        * dynamic c = 'Whatever';
//     * Unless you actually need it, it's not recommend to use
//       dynamic or var.

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// Stateless widgets are made to components that don't
// have the need to update its internal state. So they are
// basically "dumb" widgets.
// To specify and work with states we need to use
// StatefulWidgets.
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

int rndDice() {
  return Random().nextInt(6) + 1;
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = rndDice();
  int rightDiceNumber = rndDice();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                // We need to clarify that we are
                // updating the state. It basically
                // will trigger a reload and update
                // each part of the Widget that is
                // using that part of the state.
                //
                // We need to sum 1 due to the fact
                // that the min is 0 and the max in nextInt
                // is not included.
                setState(() {
                  leftDiceNumber = rndDice();
                  rightDiceNumber = rndDice();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = rndDice();
                  rightDiceNumber = rndDice();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
