import 'package:flutter/cupertino.dart';
import 'package:flutter_backend/mvc/mvc_basic/index.dart';

class AppController extends ChangeNotifier {
  AppController(this._appState);

  late final AppState _appState;

  void incrementInt() {
    _appState.intValue += 1;
    notifyListeners();
  }

  void decrementInt() {
    _appState.intValue -= 1;
    notifyListeners();
  }

  void incrementString() {
    _appState.stringValue += 'a';
    notifyListeners();
  }

  void resetAppState() {
    _appState.intValue = 0;
    _appState.stringValue = ' ';
    notifyListeners();
  }
}
