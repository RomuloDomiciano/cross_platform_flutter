import 'package:cross_platform_flutter/src/modules/what_is_flutter/what_is_flutter.dart';
import 'package:flutter/material.dart';
import 'package:cross_platform_flutter/src/models/images_list.dart';
import 'package:cross_platform_flutter/src/components/list_image_render.dart';
import 'package:cross_platform_flutter/src/components/cross_plataform_page.dart';

List<ImagesList> myAcademicCarrerList = [
  ImagesList(url: 'assets/images/zumba.jpg'),
  ImagesList(url: 'assets/images/physiologist.jpg'),
  ImagesList(url: 'assets/images/einstein.jpg'),
  ImagesList(url: 'assets/images/usp.jpg'),
];

// ignore: use_key_in_widget_constructors
class MySelfPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CrossPlataformPage(
      goBack: () {
        Navigator.pop(context);
      },
      goForward: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WhatIsFlutterIntro(),
          ),
        );
      },
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ListImageRendering(
          dynamicList: myAcademicCarrerList,
          itemCount: myAcademicCarrerList.length,
        ),
      ),
    );
  }
}
