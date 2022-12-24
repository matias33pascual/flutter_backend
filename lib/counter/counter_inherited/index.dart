export 'package:flutter_backend/counter/counter_inherited/presentation/counter_value.dart';
export 'package:flutter_backend/counter/counter_inherited/presentation/counter_screen.dart';
export 'package:flutter_backend/counter/counter_inherited/presentation/inherited_counter.dart';

import 'package:flutter/material.dart';
import 'package:flutter_backend/counter/counter_inherited/presentation/inherited_counter.dart';
import 'package:flutter_backend/counter/counter_inherited/presentation/counter_screen.dart';

class CounterInheritedExample extends StatelessWidget {
  const CounterInheritedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InheritedCounter(
      value: 1,
      child: Scaffold(body: Center(child: CounterScreen())),
    );
  }
}
