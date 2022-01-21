import 'package:cross_platform_flutter/src/modules/intro/intro_page.dart';
import 'package:cross_platform_flutter/theme/export.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: textGeneralTheme(),
        canvasColor: Colors.black,
        fontFamily: 'Romano',
      ),
      home: const IntroPage(),
    );
  }
}
