import 'package:flutter/material.dart';
import 'dart:math';
void main() {

  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title:Text("Dice App"),
        backgroundColor: Colors.purple[800],
      ),
      body: DicePage(),
    ),
  ));
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // ignore: non_constant_identifier_names
  int Left_Dice_Number = 1 ;
  // ignore: non_constant_identifier_names
  int Right_Dice_Number = 1 ;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Center(

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child:FlatButton(
              onPressed: (){
                setState(() {
                  Left_Dice_Number = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage("images/dice$Left_Dice_Number.png"),
              ),
            ),
          ),
          Expanded(
              child:FlatButton(
                onPressed: (){
                 setState(() {
                   Right_Dice_Number = Random().nextInt(6) + 1;
                 });
                },
                child: Image.asset("images/dice$Right_Dice_Number.png"),
              )
          ),
        ],
      ),
    );
  }
}

