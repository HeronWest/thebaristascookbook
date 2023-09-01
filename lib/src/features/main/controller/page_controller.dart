import 'package:flutter/material.dart';

class PageViewController with ChangeNotifier {
  int _page = 2;
  PageController pageController = PageController(initialPage: 2);

  int get page => _page;

  set page(int value) {
    _page = value;
    pageController.animateToPage(value,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
    notifyListeners();
  }

  set pageByScroll(int value) {
    _page = value;
    notifyListeners();
  }
}
