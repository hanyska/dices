import 'dart:math';

import 'package:flutter/material.dart';

class DiceWidget extends StatefulWidget {

  @override
  _DiceWidgetState createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  final Random random = new Random();

  int get getRandomNumber => random.nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: FlatButton(
        onPressed: () => setState(() {}),
        padding: EdgeInsets.zero,
        child: Image.asset(
            "assets/images/dice$getRandomNumber.png",
            color: Theme.of(context).accentColor
        ),
      ),
    );
  }
}
