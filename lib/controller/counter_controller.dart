// File name == snake_camel_case example : home_screen.dart
// Class Name == UpperCamelCase example : HomeScreen
// Method Name == lowerCamelCase example : runMethod()
import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
