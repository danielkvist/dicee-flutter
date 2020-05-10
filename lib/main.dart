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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int leftDiceNumber = 1;
    int rightDiceNumber = 5;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('clicked');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('clicked');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
