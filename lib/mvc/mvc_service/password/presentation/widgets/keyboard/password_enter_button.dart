import 'package:flutter/material.dart';
import 'package:flutter_backend/mvc/mvc_service/password/presentation/controllers/password_controller.dart';
import 'package:flutter_backend/mvc/mvc_service/password/presentation/widgets/keyboard/password_button.dart';
import 'package:provider/provider.dart';

class PasswordEnterButton extends StatelessWidget {
  const PasswordEnterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PasswordController passwordController =
        Provider.of<PasswordController>(context, listen: false);

    return PasswordButton(
      buttonSymbol: 'ENTER',
      onPressedHandler: () => passwordController.checkPassword(),
      fontSize: 20,
      width: 128 - 24 - 4,
      height: 64,
    );
  }
}
