import 'package:flutter_backend/mvc/mvc_service/password/presentation/controllers/password_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Testing password controller:',
    () {
      PasswordController passwordController = PasswordController();

      tearDown(
        () {
          passwordController.resetPassword();
        },
      );

      test('should add a new symbol', () {
        passwordController.addSymbol('2');
        passwordController.addSymbol('3');
        passwordController.addSymbol('4');

        expect(passwordController.passwordState.inputs.contains('234'), isTrue);
      });

      test(
        'should return TRUE when checking the correct password',
        () async {
          // password is 1234
          passwordController.addSymbol('1');
          passwordController.addSymbol('2');
          passwordController.addSymbol('3');
          passwordController.addSymbol('4');

          final bool response =
              await passwordController.checkPasswordInService();

          expect(response, isTrue);
        },
      );

      test(
        'should return FALSE when checking for an incorrect password',
        () async {
          // password is 1234
          passwordController.addSymbol('1');
          passwordController.addSymbol('3');
          passwordController.addSymbol('2');

          final bool response =
              await passwordController.checkPasswordInService();

          expect(response, isFalse);
        },
      );

      test(
        'should reset the inputs',
        () async {
          passwordController.addSymbol('1');
          passwordController.addSymbol('2');
          passwordController.addSymbol('3');

          expect(
            passwordController.passwordState.inputs.contains('123'),
            isTrue,
          );

          passwordController.resetPassword();

          expect(passwordController.passwordState.inputs.isEmpty, isTrue);
        },
      );
    },
  );
}
