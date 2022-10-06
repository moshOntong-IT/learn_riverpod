import 'package:flutter/material.dart';

class CountController extends ChangeNotifier {
  int counter = 0;

  void incrementCounter() {
    counter++;
    print(counter);
    notifyListeners();
  }

  void decrementCounter() {
    counter--;
    notifyListeners();
  }
}
