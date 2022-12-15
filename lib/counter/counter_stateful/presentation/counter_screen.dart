import 'package:flutter/material.dart';
import 'package:flutter_backend/counter/counter_exports.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 20,
        padding: const EdgeInsets.all(25),
        separatorBuilder: (context, index) => const Divider(height: 50),
        itemBuilder: (BuildContext context, int index) {
          return Counter(initialValue: value);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => value++),
        child: _buildButtonChild(),
      ),
    );
  }

  Column _buildButtonChild() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$value', textAlign: TextAlign.center),
        const Icon(Icons.add),
      ],
    );
  }
}
