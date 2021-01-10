import 'package:dice_app/dice_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xff264653),
        accentColor: Color(0xffE9C46A),
      ),
      home: DicePage(),
    )
  );
}
