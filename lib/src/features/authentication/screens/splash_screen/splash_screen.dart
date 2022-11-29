import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/constant/colors.dart';
import 'package:flutter_app_with_firebase/src/constant/image_strings.dart';
import 'package:flutter_app_with_firebase/src/constant/sizes.dart';
import 'package:flutter_app_with_firebase/src/constant/text_strings.dart';
import 'package:get/get.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/welcome/welcome_screen.dart';

import '../../controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  //not creating new instance
  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Obx(() {
        return Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1000),
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Image.asset(height: 180, width: 250, sSplashTopIcon),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1000),
              top: 180,
              left: splashController.animate.value ? sDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(sAppName, style: Theme.of(context).textTheme.headline3),
                    Text(sAppTagLine, style: Theme.of(context).textTheme.headline4),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: splashController.animate.value ? 200 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Image.asset(height: 350, width: 350, sSplashImage),
              ),
            ),
            Positioned(
              bottom: splashController.animate.value ? 100 : -5,
              right: 10,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: sSplashContainerSize,
                  height: sSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: sPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
