import 'package:flutter/material.dart';
import 'package:poke_api/Modules/Auth/page/auth_page.dart';
import 'package:poke_api/Modules/Home/home_page.dart';
import 'package:poke_api/Modules/Splash/splash_page.dart';



class RoutesApp {
  
  final String initialRoute  =  '/splash';


  Map<String, Widget Function(BuildContext)> routes= {
    '/splash' : (_)=> const SplashPage(),
    '/' : (_)=> const HomePage(),
    '/Auth': (_) => const AuthPage(),
    

  };


}