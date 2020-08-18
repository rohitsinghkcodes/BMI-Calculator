import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'ReusableCard.dart';
import 'constants.dart';

enum GengerSelection { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GengerSelection genderSelected;

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: genderSelected == GengerSelection.male
          ? color3
          : genderSelected == GengerSelection.female ? color2 : color1,
    );
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
                  child: ReusableCard(
                    onpress: () {
                      setState(() {
                        genderSelected = GengerSelection.male;
                      });
                    },
                    colorSelected: genderSelected == GengerSelection.male
                        ? color3
                        : color1,
                    cardChild: IconContent(
                      genicon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onpress: () {
                      setState(() {
                        genderSelected = GengerSelection.female;
                      });
                    },
                    colorSelected: genderSelected == GengerSelection.female
                        ? color2
                        : color1,
                    cardChild: IconContent(
                      genicon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
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
            decoration: boxDecoration,
            margin: EdgeInsets.all(12.0),
            width: double.infinity,
            height: kBootomContHeight,
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
