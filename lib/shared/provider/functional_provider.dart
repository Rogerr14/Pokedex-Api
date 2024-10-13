import 'package:flutter/material.dart';


class FunctionalProvider extends ChangeNotifier{
  List<Widget> pages = [];
  List<Widget> alerts  = [];



  addPage({required Widget content}){
    pages.add(content);
    notifyListeners();
  }

}