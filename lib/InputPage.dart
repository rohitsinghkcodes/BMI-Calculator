import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'ReusableCard.dart';

const bootomContHeight = 80.0;
//Color1: app container color
const color1 = Color(0xFF1D1E33);
//Color2: bottom container color/active card indicator color
const color2 = Colors.teal;
//Color2: active color for male
const color3 = Colors.blue;
//Color2: active color for female
const color4 = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor = color1;
  Color femalecardcolor = color1;

//1:male    2:female
  void updateCardColor(int genNo) {
    if (genNo == 1) {
      if (malecardcolor == color1) {
        femalecardcolor = color1;
        malecardcolor = color3;
      } else {
        malecardcolor = color1;
      }
    }
    if (genNo == 2) {
      if (femalecardcolor == color1) {
        malecardcolor = color1;
        femalecardcolor = color4;
      } else {
        femalecardcolor = color1;
      }
    }
  }

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
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(1);
                      });
                    },
                    child: ReusableCard(
                      colorSelected: malecardcolor,
                      cardChild: IconContent(
                        genicon: FontAwesomeIcons.mars,
                        gender: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(2);
                      });
                    },
                    child: ReusableCard(
                      colorSelected: femalecardcolor,
                      cardChild: IconContent(
                        genicon: FontAwesomeIcons.venus,
                        gender: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colorSelected: color1)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colorSelected: color1)),
                Expanded(child: ReusableCard(colorSelected: color1)),
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
