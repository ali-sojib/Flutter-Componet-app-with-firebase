import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/constant/colors.dart';
import 'package:flutter_app_with_firebase/src/constant/image_strings.dart';
import 'package:flutter_app_with_firebase/src/constant/sizes.dart';
import 'package:flutter_app_with_firebase/src/constant/text_strings.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/on_boarding/on_boarding_page.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPage(
        model: OnBoardingModel(
          image: sOnBoardingImg1,
          title: sOnBoardingTitle1,
          subTitle: sOnBoardingSubTitle1,
          counterText: sOnBoardingCount1,
          bgColor: sOnBoardingPage1Color,
          sizeHeight: size.height,
        ),
      ),
      OnBoardingPage(
        model: OnBoardingModel(
          image: sOnBoardingImg2,
          title: sOnBoardingTitle2,
          subTitle: sOnBoardingSubTitle2,
          counterText: sOnBoardingCount2,
          bgColor: sOnBoardingPage2Color,
          sizeHeight: size.height,
        ),
      ),
      OnBoardingPage(
        model: OnBoardingModel(
          image: sOnBoardingImg3,
          title: sOnBoardingTitle3,
          subTitle: sOnBoardingSubTitle3,
          counterText: sOnBoardingCount3,
          bgColor: sOnBoardingPage3Color,
          sizeHeight: size.height,
        ),
      ),
    ];

    final controller = LiquidController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () {},
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
              onPressed: () {},
              child: const Text('Skip', style: TextStyle(color: Colors.grey)),
            ),
          ),
          Positioned(
            bottom: 20,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
