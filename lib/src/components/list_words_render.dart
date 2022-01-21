import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cross_platform_flutter/theme/colors.dart';
import 'package:cross_platform_flutter/theme/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ListWordRendering extends StatelessWidget {
  final int itemCount;
  final List dynamicList;

  ListWordRendering({required this.itemCount, required this.dynamicList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        dynamic listItemName = dynamicList[index];
        return Text(
          listItemName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: CrossPlataformColors.textColorSecondary,
            fontSize: CrossPlataformFontSize.bodyText,
          ),
        );
      },
    );
  }
}
