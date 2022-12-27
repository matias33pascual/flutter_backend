import 'package:flutter/material.dart';
import 'package:flutter_backend/mvc/mvc_service/password/presentation/controllers/password_controller.dart';
import 'package:flutter_backend/mvc/mvc_service/password/presentation/widgets/keyboard/password_enter_button.dart';
import 'package:flutter_backend/mvc/mvc_service/password/presentation/widgets/keyboard/password_reset_button.dart';
import 'package:provider/provider.dart';
import 'password_button.dart';

class PasswordKeyboard extends StatelessWidget {
  PasswordKeyboard({Key? key}) : super(key: key);

  final List<String> buttonsSymbols = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '*',
    '0',
    '#',
  ];

  final double buttonSize = 64;
  final double fontSize = 48;
  final double axisSpacing = 2;
  late final PasswordController passwordController;

  @override
  Widget build(BuildContext context) {
    passwordController = Provider.of<PasswordController>(
      context,
      listen: false,
    );

    return Column(
      children: [
        SizedBox(
          width: buttonSize * 3,
          height: buttonSize * 4 + axisSpacing * 4,
          child: _buildButtonsGrid(),
        ),
        Row(
          children: [
            const PasswordEnterButton(),
            SizedBox(width: axisSpacing),
            const PasswordResetButton(),
          ],
        )
      ],
    );
  }

  GridView _buildButtonsGrid() {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: axisSpacing,
      crossAxisSpacing: axisSpacing,
      children:
          buttonsSymbols.map((symbol) => _buildPasswordButton(symbol)).toList(),
    );
  }

  PasswordButton _buildPasswordButton(String symbol) {
    return PasswordButton(
      buttonSymbol: symbol,
      onPressedHandler: () => passwordController.addSymbol(symbol),
      buttonSize: buttonSize,
      fontSize: fontSize,
    );
  }
}
