import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_backend/mvc/mvc_service/data/mock_password_repository.dart';

void main() {
  group(
    'Probando Mock Password Repository: ',
    () {
      test(
        'Deberia devolver TRUE al ingresar la password correcta',
        () {
          MockPasswordRepository mockPasswordRepository =
              MockPasswordRepository('123');

          expect(mockPasswordRepository.checkPassword('123'), isTrue);
        },
      );

      test(
        'Deberia devolver FALSE al ingresar una password incorrecta',
        () {
          MockPasswordRepository mockPasswordRepository =
              MockPasswordRepository('123');

          expect(mockPasswordRepository.checkPassword('345'), isFalse);
        },
      );

      test(
        "Deberia devolver TRUE al comparar correctPassword",
        () {
          MockPasswordRepository mockPasswordRepository =
              MockPasswordRepository('789');

          expect(mockPasswordRepository.correctPassword == '789', isTrue);
        },
      );
    },
  );
}
