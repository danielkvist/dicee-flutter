import 'package:flutter/material.dart';

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
    // To fix overflow we could hardcore the width
    // but that is a code smell.
    // width: 200.0.
    // A better solution is to use Expanded.
    //
    // The Expanded widget will resize to fill
    // the available horizontal/vertical space
    // if you don't specify how much it should
    // grow with:
    //    * flex (by default is set to 1).
    return Row(
      children: <Widget>[
        Expanded(
          child: Image.asset('images/dice1.png'),
        ),
        Expanded(
          child: Image.asset('images/dice2.png'),
        ),
      ],
    );
  }
}
