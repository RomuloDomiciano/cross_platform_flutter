import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cross_platform_flutter/theme/colors.dart';
import 'package:cross_platform_flutter/theme/export.dart';
import 'package:cross_platform_flutter/src/modules/myself/myself.dart';
import 'package:cross_platform_flutter/src/components/cross_plataform_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CrossPlataformPage(
      pageTitle: '',
      goForward: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MySelfPage(),
          ),
        );
      },
      body: Padding(
        padding: const EdgeInsets.only(top: CrossPlataformFontSize.introPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                AllTexts.homeTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: CrossPlataformFontSize.bodyText,
                ),
              ),
              const SizedBox(
                height: CrossPlataformFontSize.sizedBoxHeight,
              ),
              TextLiquidFill(
                text: AllTexts.introSubTile,
                waveColor: CrossPlataformColors.textColorSecondary,
                boxHeight: 150.0,
                textStyle: const TextStyle(
                  color: CrossPlataformColors.textColorSecondary,
                  fontSize: CrossPlataformFontSize.bodyText,
                ),
              ),
              const SizedBox(
                height: CrossPlataformFontSize.sizedBoxHeight,
              ),
              AnimatedTextKit(
                isRepeatingAnimation: true,
                animatedTexts: [
                  ColorizeAnimatedText(
                    AllTexts.linkedin,
                    speed: const Duration(seconds: 2),
                    textStyle: const TextStyle(
                      color: CrossPlataformColors.textColorSecondary,
                      fontSize: CrossPlataformFontSize.bodyText,
                    ),
                    colors: [
                      Colors.white,
                      Colors.blue,
                      Colors.white,
                      Colors.orange,
                      Colors.pink,
                      Colors.purple,
                      Colors.green,
                      Colors.red,
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: CrossPlataformFontSize.sizedBoxHeight,
              ),
              const Image(
                image: AssetImage('assets/images/qr_linkedin.png'),
              ),
              const SizedBox(
                height: CrossPlataformFontSize.sizedBoxHeight,
              ),
              AnimatedTextKit(
                isRepeatingAnimation: true,
                animatedTexts: [
                  ColorizeAnimatedText(
                    AllTexts.gitHub,
                    speed: const Duration(seconds: 2),
                    textStyle: const TextStyle(
                      color: CrossPlataformColors.textColorSecondary,
                      fontSize: CrossPlataformFontSize.bodyText,
                    ),
                    colors: [
                      Colors.white,
                      Colors.orange,
                      Colors.pink,
                      Colors.purple,
                      Colors.green,
                      Colors.red,
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: CrossPlataformFontSize.sizedBoxHeight,
              ),
              const Image(
                image: AssetImage('assets/images/qr_git_hub.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
