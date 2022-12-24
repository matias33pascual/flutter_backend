import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({Key? key, required this.onChangeHandler}) : super(key: key);

  final void Function(String value) onChangeHandler;

  @override
  Widget build(BuildContext context) {
    return TextField(onChanged: onChangeHandler);
  }
}
