import 'package:flutter/cupertino.dart';

class TabManager extends ChangeNotifier {
  int selectedIndex = 0;

  void goToTab(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  void goToRecipes() {
    selectedIndex = 1;
    notifyListeners();
  }
}
