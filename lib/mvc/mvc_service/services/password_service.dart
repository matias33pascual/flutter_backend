import 'package:flutter_backend/mvc/mvc_service/data/mock_password_repository.dart';

class PasswordService {
  late final MockPasswordRepository passwordRepository;
  late int latencyMilliseconds;

  PasswordService(this.passwordRepository, this.latencyMilliseconds);

  Future<bool> checkPassword(String password) async {
    await latency();
    return Future.value(passwordRepository.checkPassword(password));
  }

  Future<String> getCorrectPassword() async {
    await latency();
    return Future.value(passwordRepository.getCorrectPassword());
  }

  Future<dynamic> latency() =>
      Future.delayed(Duration(milliseconds: latencyMilliseconds));
}
