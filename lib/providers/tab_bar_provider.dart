import 'package:flutter/material.dart';

class TabBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get fetchCurrentIndex {
    return _currentIndex;
  }

  void updateCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
