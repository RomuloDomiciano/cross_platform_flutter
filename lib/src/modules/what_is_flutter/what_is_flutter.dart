import 'package:flutter/material.dart';
import 'package:cross_platform_flutter/theme/colors.dart';
import 'package:cross_platform_flutter/theme/export.dart';
import 'package:cross_platform_flutter/src/components/list_words_render.dart';
import 'package:cross_platform_flutter/src/modules/comparison/comparison.dart';
import 'package:cross_platform_flutter/src/components/cross_plataform_page.dart';

class WhatIsFlutterIntro extends StatefulWidget {
  const WhatIsFlutterIntro({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => WhatIsFlutterIntroState();
}

class WhatIsFlutterIntroState extends State<WhatIsFlutterIntro> {
  List<String> whatIsFlutter = [
    AllTexts.hybrid,
    AllTexts.madeWith,
    AllTexts.nativeArm,
    AllTexts.presentedAt,
    AllTexts.releaseDate,
    AllTexts.pixelControl,
    AllTexts.mainLanguage,
    AllTexts.whatIsFlutterTitle,
  ];
  int thisMuch = 0;

  void countHeartBeat() {
    setState(
      () {
        thisMuch++;
        whatIsFlutter.shuffle();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CrossPlataformPage(
      pageTitle: AllTexts.whatIsFlutterTitle,
      goBack: () {
        Navigator.pop(context);
      },
      goForward: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ComparisonPage(),
          ),
        );
      },
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
          child: Column(
            children: [
              Text(
                'Dart makes my heart 💙 Flutter $thisMuch times',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: CrossPlataformColors.textColorPrimary,
                  fontSize: CrossPlataformFontSize.bodyText,
                ),
              ),
              if (thisMuch > 1) ...{
                ListWordRendering(
                  itemCount: 1,
                  dynamicList: whatIsFlutter,
                )
              },
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: countHeartBeat,
                child: const Image(
                  image: AssetImage('assets/images/meme_widget.png'),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                AllTexts.clickOnTheImage,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CrossPlataformColors.textColorPrimary,
                  fontSize: CrossPlataformFontSize.bodyText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
