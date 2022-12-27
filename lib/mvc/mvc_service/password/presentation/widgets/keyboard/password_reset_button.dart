import 'package:flutter/material.dart';
import 'package:flutter_backend/mvc/mvc_service/password/presentation/controllers/password_controller.dart';
import 'package:flutter_backend/mvc/mvc_service/password/presentation/widgets/keyboard/password_button.dart';
import 'package:provider/provider.dart';

class PasswordResetButton extends StatelessWidget {
  const PasswordResetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PasswordController passwordController =
        Provider.of<PasswordController>(context, listen: false);

    return PasswordButton(
      buttonSymbol: 'RESET',
      onPressedHandler: () => passwordController.resetPassword(),
      fontSize: 20,
      width: 128 - 32 - 4,
      height: 64,
    );
  }
}
