

import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {

  int _selectedMenuOpt = 0;

  int get getSelectedMenuOpt{
    return _selectedMenuOpt;
  }

  set setSelectedMenuOpt(int i){
    _selectedMenuOpt = i;
    notifyListeners();
  }

}