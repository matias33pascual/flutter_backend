import 'package:flutter/cupertino.dart';
import 'package:flutter_backend/mvc/mvc_input/index.dart';

class AppController extends ChangeNotifier {
  AppController(this._appState);

  late final AppState _appState;

  void setNewText(String newText) {
    _appState.text = newText;
    notifyListeners();
  }
}
