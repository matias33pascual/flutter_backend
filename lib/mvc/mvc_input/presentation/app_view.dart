import 'package:flutter/material.dart';
import 'package:flutter_backend/mvc/mvc_input/index.dart';
import 'package:provider/provider.dart';

class MVCInputScreen extends StatefulWidget {
  const MVCInputScreen({Key? key}) : super(key: key);

  @override
  State<MVCInputScreen> createState() => _MVCInputScreenState();
}

class _MVCInputScreenState extends State<MVCInputScreen> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    final AppController appController = Provider.of<AppController>(context);

    return Column(
      children: [
        InputText(onChangeHandler: (value) => setState(() => text = value)),
        _buildSetNewTextButton(() => appController.setNewText(text)),
        Text(AppState.instance.text),
      ],
    );
  }

  ElevatedButton _buildSetNewTextButton(void Function() onPressedHandler) {
    return ElevatedButton(
      onPressed: onPressedHandler,
      child: const Icon(Icons.save_as_outlined),
    );
  }
}
