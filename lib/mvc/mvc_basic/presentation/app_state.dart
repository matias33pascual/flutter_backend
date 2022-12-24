class AppState {
  AppState._();
  static final AppState _instance = AppState._();
  static AppState get instance => _instance;

  int intValue = 0;
  String stringValue = '';
}
