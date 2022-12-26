import 'package:flutter_backend/mvc/mvc_service/data/mock_password_repository.dart';
import 'package:flutter_backend/mvc/mvc_service/services/password_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Probando Password Service:', () {
    test(
      'deberia devolver la password correcta',
      () async {
        PasswordService passwordService =
            PasswordService(MockPasswordRepository('123'), 500);

        final response = await passwordService.getCorrectPassword();

        expect(response == '123', isTrue);
      },
    );

    test('deberia devolver TRUE al checkear la password', () async {
      PasswordService passwordService =
          PasswordService(MockPasswordRepository('123'), 500);

      final response = await passwordService.checkPassword('123');

      expect(response, isTrue);
    });
    test('deberia devolver FALSE al checkear la password', () async {
      PasswordService passwordService =
          PasswordService(MockPasswordRepository('123'), 500);

      final response = await passwordService.checkPassword('345');

      expect(response, isFalse);
    });
  });
}
