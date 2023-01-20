import 'dart:math';

class BmiBrain {
  late double height;
  late int weight;
  late double _bmi;

  BmiBrain({required this.height, required this.weight});

  String returnBmi() {
    double _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String stateFunction() {
    if (_bmi < 18.5) {
      return "Underweight";
    } else if (_bmi > 24.5) {
      return "Overweight";
    }
    return "Normal";
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return "You have a lower than normal body weight. You can eat a bit more.";
    } else if (_bmi > 24.5) {
      return "You have higher than normal body weight. You need to exercise more!";
    }
    return "You have a normal body weight. Good job!";
  }
}
