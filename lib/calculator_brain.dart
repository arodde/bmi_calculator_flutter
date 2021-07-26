import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late final double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40) {
      return 'Obésité sévère'; //'Severe obesity';
    } else if (_bmi > 35) {
      return 'Obésité moyenne'; //'Moderate obesity';
    } else if (_bmi > 30) {
      return 'Faible obésité'; //'Low obesity';
    } else if (_bmi > 25) {
      return 'Surpoids'; //'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal'; //'Normal';
    } else {
      return 'Poids insuffisant'; //'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Vous avez un poids corporel supérieur à la normale. Essayez de faire plus d\'exercice.';
      //return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'Vous avez un poids corporel normal. Bon boulot !';
      return 'You have a normal body weight. Gook job!';
    } else {
      return 'Vous avez un poids corporel inférieur à la normale. Vous pouvez manger un peu plus.';
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
