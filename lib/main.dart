//* Para probar el state management, quiero crear una aplicacion que sume un contador con diferentes metodos

// ignore_for_file: unused_import
import 'package:flutter_backend/counter/counter_stateful/index.dart';
import 'package:flutter_backend/counter/counter_inherited/index.dart';
import 'package:flutter_backend/counter/counter_notifier/index.dart';
import 'package:flutter_backend/mvc/mvc_basic/index.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Data & Backend',
      home: MVCExample(),
    );
  }
}
