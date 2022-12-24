import 'package:flutter/material.dart';
import 'package:flutter_backend/mvc/mvc_basic/index.dart';
import 'package:provider/provider.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppState appState = AppState.instance;
    final AppController appController = Provider.of<AppController>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNumberText(appState.intValue),
            _buildStringText(appState.stringValue),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIncrementIntButton(appController.incrementInt),
                _buildDecrementIntButton(appController.decrementInt),
                _buildIncrementStringButton(appController.incrementString),
              ],
            ),
            _buildResetButton(appController.resetAppState),
          ],
        ),
      ),
    );
  }

  Text _buildNumberText(int number) {
    return Text('$number');
  }

  Text _buildStringText(String string) {
    return Text(string);
  }

  ElevatedButton _buildIncrementIntButton(void Function() onPressedHandler) {
    return ElevatedButton(
        onPressed: onPressedHandler, child: const Icon(Icons.add));
  }

  ElevatedButton _buildDecrementIntButton(void Function() onPressedHandler) {
    return ElevatedButton(
        onPressed: onPressedHandler, child: const Icon(Icons.remove));
  }

  ElevatedButton _buildIncrementStringButton(void Function() onPressedHandler) {
    return ElevatedButton(
        onPressed: onPressedHandler, child: const Icon(Icons.wordpress));
  }

  ElevatedButton _buildResetButton(void Function() onPressedHandler) {
    return ElevatedButton(
        onPressed: onPressedHandler, child: const Icon(Icons.restart_alt));
  }
}
