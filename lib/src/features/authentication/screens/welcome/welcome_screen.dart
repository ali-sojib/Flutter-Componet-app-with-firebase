import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/constant/colors.dart';
import 'package:flutter_app_with_firebase/src/constant/image_strings.dart';
import 'package:flutter_app_with_firebase/src/constant/sizes.dart';
import 'package:flutter_app_with_firebase/src/constant/text_strings.dart';
import 'package:get/get.dart';
import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SFadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? sSecondaryColor : sPrimaryColor,
      body: Stack(
        children: [
          SFadeInAnimation(
            durationInMs: 1200,
            animatePosition: SAnimatePosition(
                bottomAfter: 0, bottomBefore: -100, leftBefore: 0, leftAfter: 0, topBefore: 0, topAfter: 0, rightBefore: 0, rightAfter: 0),
            widgetChild: Container(
              padding: const EdgeInsets.all(sDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(sWelcomeScreenImage),
                    height: mediaQuery.size.height * .6,
                  ),
                  Column(
                    children: [
                      Text(
                        sWelcomeScreenTitle,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        sWelcomeScreenSubTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(sLogin.toUpperCase()),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(sSignUp.toUpperCase()),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
