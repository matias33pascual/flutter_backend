import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/password_controller.dart';
import 'widgets/keyboard/password_keyboard.dart';
import 'widgets/visor/password_visor.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PasswordController(),
      builder: (context, child) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PasswordKeyboard(),
              _buildSpace(),
              _buildPasswordVisor(),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox _buildPasswordVisor() {
    return const SizedBox(
      width: 200,
      child: PasswordVisor(),
    );
  }

  SizedBox _buildSpace() => const SizedBox(width: 128);
}
