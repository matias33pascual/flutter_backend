class MockPasswordRepository {
  late final String correctPassword;

  MockPasswordRepository(this.correctPassword);

  String getCorrectPassword() => correctPassword;

  bool checkPassword(String password) => correctPassword.contains(password);
}
