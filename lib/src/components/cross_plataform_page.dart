import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:cross_platform_flutter/theme/export.dart';

class CrossPlataformPage extends StatelessWidget {
  final Widget body;
  final Function()? goBack;
  final Function()? goForward;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  CrossPlataformPage({required this.body, this.goBack, this.goForward});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: goBack != null ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
          children: [
            if (goBack != null) ...{
              ElevatedButton.icon(
                onPressed: goBack,
                icon: const Icon(Icons.arrow_back, size: kIsWeb ? 50 : 24),
                label: const Text(
                  AllTexts.goBack,
                  style: TextStyle(fontSize: kIsWeb ? 25 : 14),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
              ),
            },
            ElevatedButton.icon(
              onPressed: goForward,
              icon: const Icon(
                Icons.arrow_forward,
                size: kIsWeb ? 50 : 24,
              ),
              label: const Text(
                AllTexts.goForward,
                style: TextStyle(fontSize: kIsWeb ? 25 : 14),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
            ),
          ],
        ),
      ),
      appBar: myAppBar(),
      body: ListView(
        children: [
          body,
        ],
      ),
    );
  }
}
