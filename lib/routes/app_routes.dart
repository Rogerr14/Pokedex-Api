import 'package:flutter/material.dart';
import 'package:poke_api/Home/home_page.dart';



class RoutesApp {
  
  final String initialRoute  =  '/';


  Map<String, Widget Function(BuildContext)> routes= {
    '/' : (_)=> HomePage(),

  };


}