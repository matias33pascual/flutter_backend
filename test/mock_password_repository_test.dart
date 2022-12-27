import 'package:flutter_backend/mvc/mvc_service/password/data/mock_password_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Testing mock password repository: ',
    () {
      MockPasswordRepository mockPasswordRepository =
          MockPasswordRepository('123');
      test(
        'should return TRUE when entering the correct password',
        () {
          expect(mockPasswordRepository.checkPassword('123'), isTrue);
        },
      );

      test(
        'should return FALSE when entering an incorrect password',
        () {
          expect(mockPasswordRepository.checkPassword('345'), isFalse);
        },
      );

      test(
        "should return TRUE when comparing correctPassword",
        () {
          expect(mockPasswordRepository.correctPassword == '123', isTrue);
        },
      );

      test(
        "should return FALSE when entering an empty password",
        () {
          expect(mockPasswordRepository.checkPassword(''), isFalse);
        },
      );

      test(
        "should return FALSE when entering a password of less than three digits.",
        () {
          expect(mockPasswordRepository.checkPassword('12'), isFalse);
        },
      );

      test(
        "should return FALSE when entering a password of more than three digits.",
        () {
          expect(mockPasswordRepository.checkPassword('1234567'), isFalse);
        },
      );
    },
  );
}
