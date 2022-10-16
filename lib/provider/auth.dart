import 'package:flutter/cupertino.dart';

class Auth extends ChangeNotifier {
  bool _authentificated = false;

  bool get authentificated => _authentificated;

  void login({required Map cendentials}) {
    _authentificated = true;

    notifyListeners();
  }

  void logout() {
    _authentificated = false;

    notifyListeners();
  }
}
