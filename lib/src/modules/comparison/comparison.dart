import 'package:cross_platform_flutter/src/modules/companies/companies_page.dart';
import 'package:cross_platform_flutter/src/modules/what_is_flutter/what_is_flutter.dart';
import 'package:flutter/material.dart';
import 'package:cross_platform_flutter/src/models/images_list.dart';
import 'package:cross_platform_flutter/src/components/list_image_render.dart';
import 'package:cross_platform_flutter/src/components/cross_plataform_page.dart';

List<ImagesList> comparisonList = [
  ImagesList(url: 'assets/images/gauss_android.jpg'),
  ImagesList(url: 'assets/images/borwein_android.jpg'),
  ImagesList(url: 'assets/images/gauss_ios.jpg'),
  ImagesList(url: 'assets/images/borwein_ios.jpg'),
];

// ignore: use_key_in_widget_constructors
class ComparisonPage extends StatelessWidget {
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
            builder: (context) => CompaniesPage(),
          ),
        );
      },
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ListImageRendering(
          dynamicList: comparisonList,
          itemCount: comparisonList.length,
        ),
      ),
    );
  }
}
