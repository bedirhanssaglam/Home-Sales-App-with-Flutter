import 'package:flutter/material.dart';

class CurrentPage extends ChangeNotifier {
  int _currentPage = 0;
  int _bottomPage = 0;

  int get currentPage => _currentPage;
  int get bottomPage => _bottomPage;

  setCurrentPage(int val) {
    _currentPage = val;
    notifyListeners();
  }

  set bottomPage(int index) {
    _bottomPage = index;
    notifyListeners();
  }
}
