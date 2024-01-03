import 'package:flutter/material.dart';
import 'package:onsi/config/app_text.dart';
import 'package:onsi/config/app_theme.dart';

class ButtonView extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final Function() onPressed;

  const ButtonView({
    required this.text,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: 1),
          borderRadius: BorderRadius.circular(AppTheme.buttonBorderRadius),
        ),
      ),
      child: Text(
        text,
        style: AppText.poppins14Semibold.copyWith(color: textColor),
      ),
    );
  }
}
