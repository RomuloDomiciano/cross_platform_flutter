import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ListImageRendering extends StatelessWidget {
  final int itemCount;
  final List dynamicList;

  ListImageRendering({required this.itemCount, required this.dynamicList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        dynamic listItemName = dynamicList[index].url;
        return Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image(
              image: AssetImage(listItemName),
            ),
          ],
        );
      },
    );
  }
}
