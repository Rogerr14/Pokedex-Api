import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poke_api/env/app_theme.dart';



class TextFormFieldWidget extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final bool readOnly;
  final List<TextInputFormatter>? textInputFormatter;
   const TextFormFieldWidget({super.key, 
   this.hintText = '',
   this.obscureText = false,
   this.readOnly = false,
   this.textInputFormatter,
   });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final InputBorder inputBorder =  OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: AppTheme.black, width: 5,strokeAlign: 25, style: BorderStyle.solid )
  );


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:widget.obscureText,
      readOnly: widget.readOnly,
      inputFormatters: widget.textInputFormatter,
      
      decoration: InputDecoration(

        hintText: widget.hintText,
        focusColor: AppTheme.white,
        filled: true,
        border: inputBorder,
        disabledBorder: inputBorder,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        fillColor: AppTheme.white,
        hoverColor: AppTheme.white,

      ),
    );
  }
}