import 'package:bmi_dribble/UI/constant.dart';
import 'package:bmi_dribble/UI/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_dribble/calculator_brain.dart';
import 'constant.dart';

import 'clipper.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}



int age = 27;
int weight=60;
int height=180;
enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.male;
                              });
                            },
                            child: CircleAvatar(
                              child: Icon(
                                FontAwesomeIcons.mars,
                                size: 60,
                              ),
                              foregroundColor: selectedGender == Gender.male
                                  ? activeForegroundColor
                                  : inactiveForegroundColor,
                              backgroundColor: selectedGender == Gender.male
                                  ? activeBackgroundColor
                                  : inactiveBackgroundColor,
                              maxRadius: 40,
                            ),
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
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.female;
                              });
                            },
                            child: CircleAvatar(
                              child: Icon(
                                FontAwesomeIcons.venus,
                                size: 60,
                              ),
                              foregroundColor: selectedGender == Gender.female
                                  ? activeForegroundColor
                                  : inactiveForegroundColor,
                              backgroundColor: selectedGender == Gender.female
                                  ? activeBackgroundColor
                                  : inactiveBackgroundColor,
                              maxRadius: 40,
                            ),
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
                Divider(
                  thickness: 2.0,
                  indent: 30,
                  endIndent: 30,
                  color: Color(0xFF56575D),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 15),
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
                  padding: const EdgeInsets.only(left: 30.0, bottom: 15),
                  child: Row(
                    children: <Widget>[
                      Text(
                        age.toString(),
                        style: kNumberStyle,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            child: Icon(Icons.keyboard_arrow_up),
                            onTap: () {
                              setState(() {
                                if (age<120) {
                                  age++;
                                }
                              });
                            },
                          ),
                          GestureDetector(child: Icon(Icons.keyboard_arrow_down),onTap: (){
                            setState(() {
                              if(age>1){
                                age--;
                              }
                            });
                          },),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2.0,
                  indent: 30,
                  endIndent: 30,
                  color: Color(0xFF56575D),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('What\'s your Height ?'),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              GestureDetector(child: Icon(Icons.arrow_back_ios),onTap: (){
                                setState(() {
                                  if(height>20){
                                    height--;
                                  }
                                });
                              },),
                              Text(
                                height.toString(),
                                style: kNumberStyle,
                              ),
                              Text('Cm'),
                              GestureDetector(child: Icon(Icons.arrow_forward_ios),onTap: (){
                                setState(() {
                                  if(height<300){
                                    height++;
                                  }
                                });
                              },),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('What\'s your Weight ?'),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              GestureDetector(child: Icon(Icons.arrow_back_ios),onTap: (){
                                setState(() {
                                  if(weight>1){
                                    weight--;
                                  }
                                });
                              },),
                              Text(
                                weight.toString(),
                                style: kNumberStyle,
                              ),
                              Text('Kg'),
                              GestureDetector(child: Icon(Icons.arrow_forward_ios),onTap: (){
                                setState(() {
                                  if(weight<300){
                                    weight++;
                                  }
                                });
                              },),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      Calculator calc =Calculator(weight: weight,height: height);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                        bmiValue: calc.getBmiValue(),
                        bmiInterpolation: calc.getBmiInterpolation(),
                      )));
                    },
                    color: activeBackgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Calculate your BMI',
                        style: TextStyle(
                            color: activeForegroundColor, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

