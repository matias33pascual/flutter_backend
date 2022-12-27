import '../data/mock_password_repository.dart';

class PasswordService {
  PasswordService({
    required this.passwordRepository,
    required this.latencyMilliseconds,
  });

  late final MockPasswordRepository passwordRepository;
  final int latencyMilliseconds;

  Future<bool> checkPassword(String password) async {
    await _latency();
    return Future.value(passwordRepository.checkPassword(password));
  }

  Future<String> getCorrectPassword() async {
    await _latency();
    return Future.value(passwordRepository.getCorrectPassword());
  }

  Future<dynamic> _latency() =>
      Future.delayed(Duration(milliseconds: latencyMilliseconds));
}
