import 'package:cross_platform_flutter/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:cross_platform_flutter/theme/export.dart';

PreferredSizeWidget myAppBar() {
  return AppBar(
    title: const Text(
      AllTexts.appBarTitle,
      style: TextStyle(
        color: CrossPlataformColors.appBarColorText,
      ),
    ),
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.pink.shade900,
            Colors.black,
          ],
        ),
      ),
    ),
  );
}

TextTheme textGeneralTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: Colors.white),
  );
}
