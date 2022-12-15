//* Para probar el state management, quiero crear una aplicacion que sume un contador con diferentes metodos

import 'package:flutter/material.dart';
import 'package:flutter_backend/counter/counter_stateful/presentation/counter_screen.dart';
import 'counter/counter_exports.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Data & Backend',
      home: CounterScreen(),
    );
  }
}
