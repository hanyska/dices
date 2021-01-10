import 'package:dice_app/dice_widget.dart';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // ignore: non_constant_identifier_names
  static int MAX_DICES = 20;
  int numberOfDices = 1;

  int get getCrossAxisCount {
    if (numberOfDices == 1 ) {
      return 1;
    }
    if (numberOfDices > 9) {
      return 4;
    }
    if (numberOfDices > 4) {
      return 3;
    }
    if (numberOfDices > 1) {
      return 2;
    }
    return 4;

  }

  @override
  void initState() {
    super.initState();
  }

  Widget generateFloatingButton(dynamic icon, Function onPressed) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: FloatingActionButton(
        child: icon is IconData
          ? Icon(
              icon,
              color: Theme.of(context).primaryColor,
            )
          : Text(
              icon,
              style: TextStyle(
                  color: Theme.of(context).primaryColor
              ),
            ),
        backgroundColor: Theme.of(context).accentColor,
        onPressed: onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dices'),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        height: double.infinity,
          padding: EdgeInsets.only(bottom: 50.0),
          child: Center(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: getCrossAxisCount,
              children: List.generate(numberOfDices, (index) => DiceWidget())
            ),
          ),
        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (numberOfDices < MAX_DICES)
            generateFloatingButton(Icons.add, () => setState(() => numberOfDices++)),
          if (numberOfDices > 1)
            generateFloatingButton(Icons.remove, () => setState(() => numberOfDices--)),
          generateFloatingButton('Roll', () => setState(() {})),
        ],
      ),
    );
  }
}
