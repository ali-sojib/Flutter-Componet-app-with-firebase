import 'package:flutter_app_with_firebase/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  void startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 1));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(OnBoardingScreen());
  }
}