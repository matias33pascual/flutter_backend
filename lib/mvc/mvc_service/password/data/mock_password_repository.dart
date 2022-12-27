class MockPasswordRepository {
  late final String correctPassword;

  MockPasswordRepository(this.correctPassword);

  String getCorrectPassword() => correctPassword;

  bool checkPassword(String password) =>
      correctPassword.compareTo(password) == 0;
}
