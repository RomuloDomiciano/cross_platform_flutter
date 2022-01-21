import 'package:cross_platform_flutter/src/modules/what_is_flutter/what_is_flutter.dart';
import 'package:flutter/material.dart';
import 'package:cross_platform_flutter/src/models/images_list.dart';
import 'package:cross_platform_flutter/src/components/list_image_render.dart';
import 'package:cross_platform_flutter/src/components/cross_plataform_page.dart';

List<ImagesList> companiesPageList = [
  ImagesList(url: 'assets/images/bmw.png'),
  ImagesList(url: 'assets/images/alibaba.png'),
  ImagesList(url: 'assets/images/ebay.png'),
  ImagesList(url: 'assets/images/nubank.png'),
  ImagesList(url: 'assets/images/tencent.jpg'),
  ImagesList(url: 'assets/images/groupon.png'),
];

// ignore: use_key_in_widget_constructors
class CompaniesPage extends StatelessWidget {
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
          dynamicList: companiesPageList,
          itemCount: companiesPageList.length,
        ),
      ),
    );
  }
}
