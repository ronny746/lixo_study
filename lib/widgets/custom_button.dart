import 'package:flutter/material.dart';
import 'package:lixo_study/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool is_small;
  CustomButton({super.key,required this.text, required this.onPressed,this.is_small = true});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 20)),
          backgroundColor: MaterialStateProperty.all(
              buttonColor)),
      child: Text(
        text,
        style: TextStyle(fontSize: is_small?12:16),
      ),
    );
  }
}
