

import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{

  int number = 1;


  increment(){
    number++;
    notifyListeners();
  }



}