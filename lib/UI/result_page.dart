import 'package:bmi_dribble/UI/clipper.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              color: Color(0xFF323232),
            ),
          ),
          SafeArea(child: Text('this is result page')),
        ],
      ),
    );
  }
}
