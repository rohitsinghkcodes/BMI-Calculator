import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'ReusableCard.dart';
import 'Constants.dart';

//Enumeration function
enum GengerSelection { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GengerSelection genderSelected;

  @override
  Widget build(BuildContext context) {
    //decoration for calculate button
    var boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: genderSelected == GengerSelection.male
          ? color6
          : genderSelected == GengerSelection.female ? color5 : color1,
    );

    //Decoration for other cards
    var toogleCardColor = genderSelected == GengerSelection.male
        ? color3
        : genderSelected == GengerSelection.female ? color2 : color1;

    //MAIN SECTION STARTS HERE
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                //Male gender section
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
                //Female gender section
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
          //Height change slider
          Expanded(
            child: ReusableCard(
              colorSelected: toogleCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabeltextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        '167',
                        style: kChoseninput,
                      ),
                      Text(
                        'cm',
                        style: kLabeltextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                //4th section
                Expanded(
                  child: ReusableCard(colorSelected: toogleCardColor),
                ),
                //fifth section
                Expanded(
                  child: ReusableCard(colorSelected: toogleCardColor),
                ),
              ],
            ),
          ),
          //Calculate Button
          Container(
            decoration: boxDecoration,
            margin: EdgeInsets.all(12.0),
            width: double.infinity,
            height: kBottomContHeight,
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
