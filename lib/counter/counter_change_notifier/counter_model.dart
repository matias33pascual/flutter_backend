import 'package:flutter/cupertino.dart';
import 'package:flutter_backend/counter/shared/counter_abstract_model.dart';

class CounterModel extends CounterAbstractModel with ChangeNotifier {
  @override
  void increment() {
    value++;
    notifyListeners();
  }
}
