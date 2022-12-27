import 'package:flutter/material.dart';

class PasswordButton extends StatelessWidget {
  const PasswordButton({
    required this.buttonSymbol,
    required this.onPressedHandler,
    this.fontSize = 48,
    this.buttonSize = 64,
    this.width,
    this.height,
    Key? key,
  }) : super(key: key);

  final String buttonSymbol;
  final void Function()? onPressedHandler;

  final double fontSize;
  final double buttonSize;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? buttonSize,
      height: height ?? buttonSize,
      child: _buildButton(),
    );
  }

  ElevatedButton _buildButton() {
    return ElevatedButton(
      onPressed: onPressedHandler,
      child: Text(
        buttonSymbol,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
