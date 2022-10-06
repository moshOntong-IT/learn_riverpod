import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    print(counter);
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }
}
