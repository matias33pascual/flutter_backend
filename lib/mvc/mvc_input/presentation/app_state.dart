class AppState {
  AppState._();

  static final AppState _instance = AppState._();
  static AppState get instance => _instance;

  String text = '';
}
