import 'dart:math';

class Control {
  final int height;
  final int weight;

  double _bmi = 0.0;

  Control({required this.height, required this.weight});

  String calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    _bmi = bmi;
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Keep it up!';
    } else {
      return 'You have a lower body weight. Try to eat more.';
    }
  }
}
