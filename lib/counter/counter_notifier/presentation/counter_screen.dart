import 'package:flutter/material.dart';
import 'package:flutter_backend/counter/counter_notifier/presentation/counter_controller.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterController(value: 10),
      builder: (context, _) {
        final counterController =
            Provider.of<CounterController>(context, listen: true);

        return Column(
          children: [
            _buildText(counterController.value),
            _buildButton(counterController.increment),
          ],
        );
      },
    );
  }

  Text _buildText(int value) {
    return Text('$value');
  }

  ElevatedButton _buildButton(void Function() onPressedHandler) {
    return ElevatedButton(
      onPressed: onPressedHandler,
      child: const Icon(Icons.add),
    );
  }
}
