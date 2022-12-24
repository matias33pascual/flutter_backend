import 'package:flutter/material.dart';
import 'package:flutter_backend/counter/counter_inherited/index.dart';

class CounterValue extends StatelessWidget {
  const CounterValue({
    Key? key,
    required this.initialValue,
  }) : super(key: key);

  final int initialValue;

  @override
  Widget build(BuildContext context) {
    final value = InheritedCounter.of(context)!.value;

    return Text('${value + initialValue}');
  }
}
