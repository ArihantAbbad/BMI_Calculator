import 'dart:math';

import 'package:flutter/material.dart';

class calculator {
  calculator({this.height, this.weight});
  final height;
  final weight;

  double _bmi;

  String calculatebmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getinterpretation() {
    if (_bmi >= 25) {
      return 'you have more than normal body weight try to exercise more!';
    } else if (_bmi > 18.5) {
      return 'you have normal body weight, good job!';
    } else {
      return 'you have less than normal body weight, eat more!';
    }
  }
}
