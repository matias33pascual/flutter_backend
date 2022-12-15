import 'package:flutter_backend/counter/shared/counter_abstract_model.dart';

class CounterModel extends CounterAbstractModel {
  @override
  void increment() {
    value++;
  }
}
