import 'package:flutter/material.dart';
import 'package:flutter_backend/mvc/mvc_service/password/presentation/controllers/password_controller.dart';
import 'package:provider/provider.dart';

class PasswordMessage extends StatelessWidget {
  const PasswordMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PasswordController passwordController =
        Provider.of<PasswordController>(context);

    return passwordController.isCheckingPassword == true
        ? FutureBuilder(
            future: passwordController.checkPasswordInService(),
            builder: (context, snapshot) =>
                snapshot.connectionState == ConnectionState.done
                    ? _buildTextMessage(passwordController)
                    : const CircularProgressIndicator(),
          )
        : Text(passwordController.passwordState.message);
  }

  Text _buildTextMessage(PasswordController passwordController) =>
      Text(passwordController.passwordState.message);
}
