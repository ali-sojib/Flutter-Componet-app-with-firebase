import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/constant/colors.dart';
import 'package:flutter_app_with_firebase/src/constant/image_strings.dart';
import 'package:flutter_app_with_firebase/src/constant/sizes.dart';
import 'package:flutter_app_with_firebase/src/constant/text_strings.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/on_boarding/on_boarding_page.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  OnBoardingController onBoardingController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: onBoardingController.pages,
            liquidController: onBoardingController.controller,
            // slideIconWidget: const Icon(Icons.arrow_back_ios),
            // enableSideReveal: true,
            onPageChangeCallback: onBoardingController.onPageChangedCallback,
          ),
          Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () => onBoardingController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                onPrimary: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(color: sDarkColor, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => onBoardingController.skip(),
              child: const Text('Skip', style: TextStyle(color: Colors.grey)),
            ),
          ),
          Obx(() {
            return Positioned(
              bottom: 20,
              child: AnimatedSmoothIndicator(
                activeIndex: onBoardingController.currentPage.value,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Color(0xff272727),
                  dotHeight: 5.0,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
