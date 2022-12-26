class AppState {
  AppState._();

  static final AppState _state = AppState._();
  static AppState get state => _state;

  String text = '';
}
