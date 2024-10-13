import 'dart:async';

import 'package:flutter/material.dart';
import 'package:poke_api/env/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Timer _pulsar;
  bool isActive = false;
  Color atached = AppTheme.white;

  @override
  void initState() {

     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
   _animationPokeball();
      Future.delayed(Duration(seconds: 5), (){

        Navigator.pushNamedAndRemoveUntil(context, '/Auth', (route) => false);
      });
     });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _pulsar.cancel();
    // TODO: implement dispose
    super.dispose();
  }


  _animationPokeball(){
     _pulsar = Timer.periodic(const Duration(seconds: 1), (timer) {
      if(!isActive){
      debugPrint('Entra en rojo');
        atached = AppTheme.red;
        isActive = true;
        
     setState(() {
       
     });
      }else{
        
      debugPrint('Entra en blanco');
        atached = AppTheme.white;
        isActive = false;
        setState(() {
       
     });
      }
     });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: AppTheme.white,
              height: size.height *0.5,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height *0.3,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    color: AppTheme.red,
                    border: Border.all(width: 5),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(200), )
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: AppTheme.red,
              height: size.height*0.5,
              child: Align(
                alignment: Alignment.topCenter,
                 child: Container(
                  height: size.height *0.3,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    color: AppTheme.white,
                    border: Border.all(width: 5),
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(200), )
                  ),
                ),
                ),
            ),
          ),
          
          Align(
            alignment: Alignment.center,
            child: Container(
              height: size.height * 0.1,
              width: size.width *0.17,
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.black, width: 5),
                color: atached,
                borderRadius: BorderRadius.circular(200)
              ),
            ),
          ),
        ],
      ),
    );
  }
}