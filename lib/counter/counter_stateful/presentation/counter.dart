import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final int initialValue;
  const Counter({required this.initialValue, Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int _countValue;

  @override
  void initState() {
    _countValue = widget.initialValue;
    if (kDebugMode) print('initState: $_countValue');
    super.initState();
  }

  onPressedHandler() {
    setState(() {
      _countValue++;
      if (kDebugMode) print('setState: $_countValue');
    });
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) print('build: $_countValue');

    return Column(
      children: [
        _buildText(),
        _buildButton(),
      ],
    );
  }

  @override
  void didUpdateWidget(covariant Counter oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialValue != widget.initialValue) {
      _countValue = widget.initialValue;

      if (kDebugMode) {
        print('didUpdateWidget: $_countValue');
      }
    }
  }

  @override
  void dispose() {
    if (kDebugMode) print('dispose: $_countValue');
    super.dispose();
  }

  Center _buildText() {
    return Center(
      child: Text('$_countValue'),
    );
  }

  ElevatedButton _buildButton() {
    return ElevatedButton(
      onPressed: onPressedHandler,
      child: const Icon(Icons.add),
    );
  }
}
