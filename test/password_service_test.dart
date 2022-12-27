import 'package:flutter_backend/mvc/mvc_service/password/data/mock_password_repository.dart';
import 'package:flutter_backend/mvc/mvc_service/password/services/password_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testing password service:', () {
    PasswordService passwordService = PasswordService(
      passwordRepository: MockPasswordRepository('123'),
      latencyMilliseconds: 500,
    );

    test(
      'should return the correct password',
      () async {
        final response = await passwordService.getCorrectPassword();

        expect(response == '123', isTrue);
      },
    );

    test(
      'should return TRUE when checking the password',
      () async {
        final response = await passwordService.checkPassword('123');

        expect(response, isTrue);
      },
    );
    test(
      'should return FALSE when checking the password',
      () async {
        final response = await passwordService.checkPassword('345');

        expect(response, isFalse);
      },
    );
  });
}
