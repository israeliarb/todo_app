import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  AppButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(text, style: TextStyle(color: CustomColor.customWhite)),
    );
  }
}
