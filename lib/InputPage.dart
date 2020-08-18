import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'ReusableCard.dart';

const bootomContHeight = 80.0;
//Color1: app container color
const color1 = Color(0xFF1D1E33);
//Color2: bottom container color
const color2 = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  colorSelected: color1,
                  cardChild: IconContent(
                    genicon: FontAwesomeIcons.mars,
                    gender: 'MALE',
                  ),
                ),
                ReusableCard(
                  colorSelected: color1,
                  cardChild: IconContent(
                    genicon: FontAwesomeIcons.venus,
                    gender: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(colorSelected: color1),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(colorSelected: color1),
                ReusableCard(colorSelected: color1),
              ],
            ),
          ),
          Container(
            color: color2,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bootomContHeight,
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
