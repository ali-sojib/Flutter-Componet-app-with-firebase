import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/constant/colors.dart';
import 'package:flutter_app_with_firebase/src/constant/image_strings.dart';
import 'package:flutter_app_with_firebase/src/constant/sizes.dart';
import 'package:flutter_app_with_firebase/src/constant/text_strings.dart';
import 'package:get/get.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SFadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          SFadeInAnimation(
            durationInMs: 1600,
            animatePosition: SAnimatePosition(
              topAfter: 10,
              topBefore: -30,
              leftAfter: -10,
              leftBefore: -30,
            ),
            widgetChild: Image.asset(height: 180, width: 250, sSplashTopIcon),
          ),
          SFadeInAnimation(
            durationInMs: 2000,
            animatePosition: SAnimatePosition(
              topAfter: 200,
              topBefore: 200,
              leftAfter: sDefaultSize,
              leftBefore: -80,
            ),
            widgetChild: AnimatedOpacity(
              duration: const Duration(milliseconds: 5000),
              opacity: controller.animate.value ? 1 : 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(sAppName, style: Theme.of(context).textTheme.headline3),
                  Text(sAppTagLine, style: Theme.of(context).textTheme.headline4),
                ],
              ),
            ),
          ),
          SFadeInAnimation(
            durationInMs: 2400,
            animatePosition: SAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 100,
            ),
            widgetChild: Image.asset(height: 350, width: 350, sSplashImage),
          ),
          SFadeInAnimation(
            durationInMs: 2400,
            animatePosition: SAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 60,
              rightBefore: sDefaultSize,
              rightAfter: sDefaultSize - 20,
            ),
            widgetChild: Container(
              width: sSplashContainerSize,
              height: sSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: sPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
