import 'package:flutter/material.dart';
import 'package:flutter_backend/counter/counter_notifier/presentation/counter_screen.dart';

class CounterNotifierExample extends StatelessWidget {
  const CounterNotifierExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CounterScreen()));
  }
}
