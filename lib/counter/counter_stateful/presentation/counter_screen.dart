import 'package:flutter/material.dart';
import 'package:flutter_backend/counter/counter_stateful/index.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 20,
        padding: const EdgeInsets.all(25),
        separatorBuilder: (_, __) => const Divider(height: 50),
        itemBuilder: (_, __) => Counter(initialValue: currentValue),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => currentValue++),
        child: _buildAddButton(),
      ),
    );
  }

  Column _buildAddButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$currentValue', textAlign: TextAlign.center),
        const Icon(Icons.add),
      ],
    );
  }
}
