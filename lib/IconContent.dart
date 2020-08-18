import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.genicon, this.gender});
  final String gender;
  final IconData genicon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genicon,
          size: 150.0,
        ),
        SizedBox(height: 15.0),
        Text(
          gender,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}