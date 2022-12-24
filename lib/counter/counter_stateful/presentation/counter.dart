import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final int initialValue;
  const Counter({required this.initialValue, Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int _value;

  @override
  void initState() {
    _value = widget.initialValue;

    debugPrint('initState: $_value');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) print('build: $_value');

    return Column(
      children: [
        _buildText(),
        _buildButton(),
      ],
    );
  }

  Text _buildText() {
    return Text('$_value');
  }

  ElevatedButton _buildButton() {
    return ElevatedButton(
      onPressed: onPressedHandler,
      child: const Icon(Icons.add),
    );
  }

  void onPressedHandler() {
    setState(() {
      _value++;
    });

    debugPrint('setState: $_value');
  }

  @override
  void didUpdateWidget(covariant Counter oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialValue != widget.initialValue) {
      _value = widget.initialValue;
    }

    debugPrint('didUpdateWidget: $_value');
  }

  @override
  void dispose() {
    debugPrint('dispose: $_value');

    super.dispose();
  }
}
