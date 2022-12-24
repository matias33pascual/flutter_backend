import 'package:flutter/material.dart';
import 'package:flutter_backend/counter/counter_inherited/index.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CounterValue(initialValue: 10),
        CounterValue(initialValue: 20),
        CounterValue(initialValue: 30),
      ],
    );
  }
}
