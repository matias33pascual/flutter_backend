import 'package:flutter_backend/counter/shared/counter_interface.dart';

abstract class CounterAbstractModel implements CounterInterface {
  late int value;
  CounterAbstractModel() : value = 0;
}
