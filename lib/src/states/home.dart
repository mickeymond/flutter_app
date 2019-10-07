import 'package:flutter/foundation.dart';

class HomeState with ChangeNotifier {
  int _selectedTab = 0;

  int get selectedTab => _selectedTab;

  set selectedTab(int newValue) {
    _selectedTab = newValue;
    notifyListeners();
  }
}
