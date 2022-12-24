export 'package:flutter_backend/counter/counter_stateful/presentation/counter_screen.dart';
export 'package:flutter_backend/counter/counter_stateful/presentation/counter.dart';

import 'package:flutter/material.dart';
import 'package:flutter_backend/counter/counter_stateful/presentation/counter_screen.dart';

class CounterStatefulExample extends StatelessWidget {
  const CounterStatefulExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CounterScreen();
  }
}
