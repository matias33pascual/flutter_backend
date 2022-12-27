enum PasswordMessages {
  idle,
  error,
  correct,
}

extension PasswordMessagesExtension on PasswordMessages {
  String getMessage() {
    switch (this) {
      case PasswordMessages.idle:
        return 'Ingrese password';
      case PasswordMessages.error:
        return 'Password incorrecta';
      case PasswordMessages.correct:
        return 'Password correcta';
    }
  }
}
