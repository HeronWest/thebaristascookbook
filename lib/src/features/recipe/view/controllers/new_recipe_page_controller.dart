import 'package:flutter/material.dart';

class NewRecipePageController extends ValueNotifier<int> {
  NewRecipePageController() : super(0);

  void setSelected(int index) {
    value = index;
  }
}