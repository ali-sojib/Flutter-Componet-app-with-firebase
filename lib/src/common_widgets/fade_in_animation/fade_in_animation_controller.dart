import 'package:flutter_app_with_firebase/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class SFadeInAnimationController extends GetxController {
  static SFadeInAnimationController get find => Get.find();

  RxBool animate = false.obs;

  void startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));

    ///TODO: add smothing animation page transgection
    Get.offAll(OnBoardingScreen());
  }

  void startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }
}
