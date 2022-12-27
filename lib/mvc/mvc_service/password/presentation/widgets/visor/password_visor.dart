import 'package:flutter/material.dart';
import 'password_inputs.dart';
import 'password_message.dart';

class PasswordVisor extends StatelessWidget {
  const PasswordVisor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PasswordMessage(),
        _buildSpace(),
        const PasswordInputs(),
      ],
    );
  }

  SizedBox _buildSpace() => const SizedBox(height: 24);
}
