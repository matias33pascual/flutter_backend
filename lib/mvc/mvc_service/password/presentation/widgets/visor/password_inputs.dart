import 'package:flutter/material.dart';
import 'package:flutter_backend/mvc/mvc_service/password/presentation/controllers/password_controller.dart';
import 'package:flutter_backend/mvc/mvc_service/password/presentation/states/password_state.dart';
import 'package:provider/provider.dart';

class PasswordInputs extends StatelessWidget {
  const PasswordInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PasswordState passwordState =
        Provider.of<PasswordController>(context).passwordState;

    return Text(passwordState.inputs);
  }
}
