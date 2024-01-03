import 'package:flutter/material.dart';
import 'package:onsi/config/app_colors.dart';
import 'package:onsi/model/data.dart';

class Utils {
  static MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }

  static Color getTransactionColor(TransactionType type) {
    switch (type) {
      case TransactionType.cashback:
      case TransactionType.boostedCashback:
        return AppColors.greenDark;
      case TransactionType.charge:
        return AppColors.black;
      case TransactionType.credit:
        return AppColors.blueDark;
    }
  }

  static String getFormattedDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }
}
