import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  CounterController({required this.value});

  int value;

  void increment() {
    value++;
    notifyListeners(); //* inherited from ChangeNotifier
  }
}
