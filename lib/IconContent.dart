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
          size: 95.0,
          //color: Colors.white,
        ),
        SizedBox(height: 15.0),
        Text(
          gender,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
