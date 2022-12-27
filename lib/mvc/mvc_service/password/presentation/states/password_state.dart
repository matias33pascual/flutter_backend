import 'package:flutter_backend/mvc/mvc_service/password/model/password_messages_enum.dart';

class PasswordState {
  PasswordState._();

  static final PasswordState _state = PasswordState._();
  static PasswordState get state => _state;

  String inputs = '';
  String message = PasswordMessages.idle.getMessage();
}
