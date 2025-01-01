import 'package:flutter/cupertino.dart';

class BMICalculatorViewModel extends ChangeNotifier {
  String _gender = "Male";
  double _height = 170;
  int _weight = 60;
  int _age = 20;
  double _bmi = 0;
  String _bmiCategory = "";
  String _suggestion = "";

  String get gender => _gender;
  double get height => _height;
  int get weight => _weight;
  int get age => _age;
  double get bmi => _bmi;
  String get bmiCategory => _bmiCategory;
  String get suggestion => _suggestion;

  void setGender(String gender) {
    _gender = gender;
    notifyListeners();
  }

  void setHeight(double height) {
    _height = height;
    notifyListeners();
  }

  void increaseWeight() {
    _weight++;
    notifyListeners();
  }

  void decreaseWeight() {
    if (_weight > 0) {
      _weight--;
      notifyListeners();
    }
  }

  void increaseAge() {
    _age++;
    notifyListeners();
  }

  void decreaseAge() {
    if (_age > 0) {
      _age--;
      notifyListeners();
    }
  }

  void calculateBMI() {
    _bmi = _weight / ((_height / 100) * (_height / 100));
    if (_bmi < 18.5) {
      _bmiCategory = "Underweight";
      _suggestion = 'You need to eat More and healthy to gain some Weight.';
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      _bmiCategory = "Normal";
      _suggestion = 'Congratulation! You have a normal body Weight.';
    } else if (_bmi >= 25 && _bmi < 29.9) {
      _bmiCategory = "Overweight";
      _suggestion = 'You need to focus on your Diet and also start Exercise.';
    } else {
      _bmiCategory = "Obese";
      _suggestion =
          'You should have to start strict Exercise and also focus on your Diet.';
    }
    notifyListeners();
  }
}
