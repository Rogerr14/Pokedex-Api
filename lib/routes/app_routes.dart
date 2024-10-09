import 'package:flutter/material.dart';
import 'package:poke_api/Modules/Auth/SingIn/sing_in_page.dart';
import 'package:poke_api/Modules/Home/home_page.dart';
import 'package:poke_api/Modules/Splash/splash_page.dart';



class RoutesApp {
  
  final String initialRoute  =  '/';


  Map<String, Widget Function(BuildContext)> routes= {
    '/slpash' : (_)=> const SplashPage(),
    '/' : (_)=> const HomePage(),
    'SingIn': (_) => const SingInPage(),
    

  };


}