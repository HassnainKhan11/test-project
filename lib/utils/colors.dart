import 'package:flutter/material.dart';

class AppColors {
  static Color cardBgColor = const Color(0xffFFF2E4);
  static Color primaryTextColor = const Color(0xff000000);
  static Color secondaryTextColor = const Color(0xff898989);

  static LinearGradient mainCardGradient = const LinearGradient(
      begin: Alignment(0.4999999870889078, 1.1109271241737497),
      end: Alignment(0.45428570586566014, -0.31622514688327297),
      colors: [Color(0xffffdeb8), Color(0xffffebd4)]);

  static LinearGradient massageCardGradient = const LinearGradient(
      begin: Alignment(0.02832863176159441, 1.0000000162031886),
      end: Alignment(1.000000010731929, 0.04605257430086738),
      colors: [Color(0xffb8e7f8), Color(0xff85dcf7)]);
}
