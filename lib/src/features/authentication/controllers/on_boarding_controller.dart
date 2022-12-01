import 'package:flutter_app_with_firebase/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constant/colors.dart';
import '../../../constant/image_strings.dart';
import '../../../constant/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPage(
      model: OnBoardingModel(
        image: sOnBoardingImg1,
        title: sOnBoardingTitle1,
        subTitle: sOnBoardingSubTitle1,
        counterText: sOnBoardingCount1,
        bgColor: sOnBoardingPage1Color,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: sOnBoardingImg2,
        title: sOnBoardingTitle2,
        subTitle: sOnBoardingSubTitle2,
        counterText: sOnBoardingCount2,
        bgColor: sOnBoardingPage2Color,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: sOnBoardingImg3,
        title: sOnBoardingTitle3,
        subTitle: sOnBoardingSubTitle3,
        counterText: sOnBoardingCount3,
        bgColor: sOnBoardingPage3Color,
      ),
    ),
  ];

  onPageChangedCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  skip() => Get.offAll(WelcomeScreen());

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
    if (nextPage == 3) {
      Get.offAll(WelcomeScreen());
    }
  }
}
