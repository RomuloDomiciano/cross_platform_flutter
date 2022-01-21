import 'package:cross_platform_flutter/src/modules/thank_you/thank_you_page.dart';
import 'package:cross_platform_flutter/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:cross_platform_flutter/theme/export.dart';

class FuchsiaPage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, size: kIsWeb ? 50 : 24),
              label: const Text(
                AllTexts.goBack,
                style: TextStyle(fontSize: kIsWeb ? 25 : 14),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThankYouPage(),
                  ),
                );
              },
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
        children: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              AllTexts.googleFuchsia,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: CrossPlataformColors.textColorPrimary,
                fontSize: CrossPlataformFontSize.bodyText,
              ),
            ),
          ),
          Image(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/fuchsia.png'),
          ),
        ],
      ),
    );
  }
}
