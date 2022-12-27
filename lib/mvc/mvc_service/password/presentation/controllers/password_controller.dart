import 'package:flutter/material.dart';
import 'package:flutter_backend/mvc/mvc_service/password/model/password_messages_enum.dart';
import '../../data/mock_password_repository.dart';
import '../../services/password_service.dart';
import '../states/password_state.dart';

class PasswordController extends ChangeNotifier {
  PasswordController() {
    passwordState = PasswordState.state;

    passwordService = PasswordService(
      passwordRepository: MockPasswordRepository(correctPassword),
      latencyMilliseconds: 1000,
    );
  }

  late final PasswordState passwordState;
  late final PasswordService passwordService;

  bool isCheckingPassword = false;
  final String correctPassword = '1234';

  void addSymbol(String symbol) {
    passwordState.inputs += symbol;

    if (passwordState.message != PasswordMessages.idle.getMessage()) {
      cleanMessage();
    }

    notifyListeners();
  }

  void checkPassword() {
    isCheckingPassword = true;
    notifyListeners();
  }

  Future<bool> checkPasswordInService() async {
    final bool response = await passwordService.checkPassword(
      passwordState.inputs,
    );

    setMessageAccordingToResponse(response);

    isCheckingPassword = false;

    cleanInputs();

    notifyListeners();

    return response;
  }

  void setMessageAccordingToResponse(bool response) {
    if (response == true) {
      passwordState.message = PasswordMessages.correct.getMessage();
    } else {
      passwordState.message =
          '${PasswordMessages.error.getMessage()}\nPassword correcta: $correctPassword';
    }
  }

  void cleanInputs() {
    passwordState.inputs = '';
  }

  void cleanMessage() {
    passwordState.message = PasswordMessages.idle.getMessage();
  }

  void resetPassword() {
    passwordState.inputs = '';
    passwordState.message = PasswordMessages.idle.getMessage();
    notifyListeners();
  }
}
