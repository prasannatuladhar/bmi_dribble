import 'dart:math';
import 'package:flutter/material.dart';

class Calculator {
  Calculator({@required this.height, @required this.weight});
  int height;
  int weight;
  double _bmi;

  String getBmiValue() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBmiInterpolation() {
    if (_bmi > 30) {
      return 'You are Obesed!';
    } else if (_bmi > 25) {
      return 'Your are Overweight!';
    } else if (_bmi > 18.5) {
      return 'You have Normal body weight !';
    } else {
      return 'You are Underweight!';
    }
  }
}
