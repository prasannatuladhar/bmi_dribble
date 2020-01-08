import 'package:bmi_dribble/UI/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const activeForegroundColor = Color(0xFF313131);
const activeBackgroundColor = Color(0xFFA3F0BB);
const inactiveForegroundColor = Color(0xFFE8E8E8);
const inactiveBackgroundColor = Color(0xFF1F1F1F);

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                color: Color(0xFF323232),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'BMI Calculator',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'What you are?',
                        style: kLabelStyle,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 30.0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            child: Icon(
                              FontAwesomeIcons.mars,
                              size: 60,
                            ),
                            foregroundColor: activeForegroundColor,
                            backgroundColor: activeBackgroundColor,
                            maxRadius: 40,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Male',
                            style: kLabelStyle,
                          )
                        ],
                      ),
                      SizedBox(width: 50.0),
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            child: Icon(
                              FontAwesomeIcons.venus,
                              size: 60,
                            ),
                            foregroundColor: inactiveForegroundColor,
                            backgroundColor: inactiveBackgroundColor,
                            maxRadius: 40,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Female',
                            style: kLabelStyle,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(thickness: 2.0,
                  indent: 30,
                  endIndent: 30,
                  color: Color(0xFF56575D),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'What\'s your age?',
                        style: kLabelStyle,
                      )
                    ],
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0,bottom: 15),
                  child: Row(
                    children: <Widget>[
                      Text('27',style: kNumberStyle,),
                      SizedBox(width: 10.0,),
                      Column(
                        children: <Widget>[
                          Icon(Icons.keyboard_arrow_up),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(thickness: 2.0,
                  indent: 30,
                  endIndent: 30,
                  color: Color(0xFF56575D),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('What\'s your Height ?'),
                          SizedBox(height: 15,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text('180',style: kNumberStyle,),
                              Text('Cm')
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('What\'s your Weight ?'),
                          SizedBox(height: 15,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text('62',style: kNumberStyle,),
                              Text('Kg')
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    onPressed: (){},
                    color: activeBackgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Calculate your BMI',style: TextStyle(color: activeForegroundColor,fontSize: 20),),
                    ),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
