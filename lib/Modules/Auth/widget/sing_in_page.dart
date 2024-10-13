import 'package:flutter/material.dart';
import 'package:poke_api/env/app_theme.dart';
import 'package:poke_api/shared/widgets/button_widget.dart';
import 'package:poke_api/shared/widgets/text_form_field_widget.dart';


class SingInPage extends StatefulWidget {
  const SingInPage({super.key});

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.of(context).size;
    return Column(
      children: [
        Text('Iniciar Sesión', style: TextStyle(color: AppTheme.yellow, fontWeight: FontWeight.bold, fontSize: 30, ),),
        SizedBox(height: size.height * 0.01,),
        TextFormFieldWidget(hintText: 'correo@correo.com',),
        SizedBox(height: size.height * 0.02,),
        TextFormFieldWidget(
          hintText: 'contraseña',
          obscureText: true,
        ),
        SizedBox(height: size.height * 0.02,),
        ButtonWidget(titleButton: 'INGRESAR'),
        TextButton(onPressed: (){}, child: Text('¿No tienes cuenta? Registrate Aquí', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: AppTheme.blue),))

      ],
    );
  }
}