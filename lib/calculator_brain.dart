import 'dart:math';
import 'package:flutter/material.dart';

class Calculator{
  Calculator({@required this.height,@required this.weight});
  int height;
  int weight;
  double _bmi;

  String getBmiValue(){
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
}