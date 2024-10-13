import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poke_api/Modules/Auth/widget/sing_in_page.dart';
import 'package:poke_api/Modules/Auth/widget/sing_up_page.dart';
import 'package:poke_api/env/app_theme.dart';
import 'package:rive/rive.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  final _pageController = PageController(initialPage: 1);

  @override
  void initState() {
    super.initState();
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.red,
      body: Stack(
        children: [
         
         Align(
          alignment: Alignment.topCenter,
           child: SingleChildScrollView(
             child: Column(
              children: [
             
             Padding(
               padding: const EdgeInsets.only(top: 40),
               child: SvgPicture.asset(AppTheme.pokemonLogo),
             ),
              SizedBox(
                height: size.height *0.2,
                child: RiveAnimation.asset(AppTheme.pokeball,antialiasing: true,useArtboardSize: true,  fit: BoxFit.contain)),
             
             SizedBox(
              height: size.height *0.9,
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 35),
                 child: PageView(
                   controller: _pageController,
                   physics: NeverScrollableScrollPhysics(),

                   children: [
                    //  SingInPage(),
                    SingUpPage()


                   ],
                 ),
               ),
             )
              ],
             ),
           ),
         ),

        ],
      ),
    );
  }
}