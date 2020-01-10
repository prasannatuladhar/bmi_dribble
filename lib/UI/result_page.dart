import 'package:bmi_dribble/UI/clipper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constant.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiValue,@required this.bmiInterpolation});
  String bmiValue;
  String bmiInterpolation;
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
          SafeArea(child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Your BMI'),
                Icon(FontAwesomeIcons.heartbeat,size: 170,color: activeBackgroundColor,),
                Text(bmiValue,style: kNumberStyle,),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(bmiInterpolation,style: TextStyle(letterSpacing:2,fontSize: 20,
    color:activeBackgroundColor, ),),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
