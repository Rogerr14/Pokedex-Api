import 'package:flutter/material.dart';
import 'package:poke_api/env/app_theme.dart';



class ButtonWidget extends StatefulWidget {
  final Function()? onPress;
  final String titleButton;
  const ButtonWidget({super.key, this.onPress, required this.titleButton,});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppTheme.black
      ),
      onPressed: widget.onPress, 
      child: Text(widget.titleButton, style: TextStyle(color: AppTheme.white),)
      );
  }
}