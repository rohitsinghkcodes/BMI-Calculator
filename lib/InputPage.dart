import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'ReusableCard.dart';

const bootomContHeight = 80.0;
//Color1: app container color
const color1 = Color(0xFF303030);
//Color2: bottom container color/active card indicator color
const color2 = Color(0xFFFF1744);
//Color2: active color for male
const color3 = Colors.blue;
//Color2: active color for female
const color4 = Color(0xFFEB1555);

enum GengerSelection { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  GengerSelection gengerSelected;

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
                        gengerSelected = GengerSelection.male;
                      });
                    },
                    child: ReusableCard(
                      colorSelected: gengerSelected == GengerSelection.male ? color3 : color1,
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
                        gengerSelected = GengerSelection.female;
                      });
                    },
                    child: ReusableCard(
                      colorSelected: gengerSelected == GengerSelection.female ? color2 : color1,
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color2,
            ),
            margin: EdgeInsets.all(15.0),
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
