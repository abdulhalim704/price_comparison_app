import 'package:flutter/material.dart';

class StockAliasProvider with ChangeNotifier {
  bool _isSelected = false;

  bool get isSelected => _isSelected;

  void toggleSelection() {
    _isSelected = !_isSelected;
    notifyListeners();
  }

  void selectStock() {
    _isSelected = false;
    notifyListeners();
  }

  void selectAlias() {
    _isSelected = true;
    notifyListeners();
  }

  void clearslect() {
    _isSelected = false;
    notifyListeners();
  }
}

class DayWaysProvider with ChangeNotifier {
  int index = 0;

  void setSelection(int selectedIndex) {
    index = selectedIndex;
    notifyListeners();
  }
}
