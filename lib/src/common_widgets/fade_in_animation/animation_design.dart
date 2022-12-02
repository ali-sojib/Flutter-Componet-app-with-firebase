import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:get/get.dart';
import 'fade_in_animation_controller.dart';

class SFadeInAnimation extends StatelessWidget {
  SFadeInAnimation({
    Key? key,
    required this.durationInMs,
    required this.widgetChild,
    this.animatePosition,
  }) : super(key: key);

  final controller = Get.put(SFadeInAnimationController());
  final int durationInMs;
  final SAnimatePosition? animatePosition;
  final Widget widgetChild;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animatePosition!.topAfter : animatePosition!.topBefore,
        left: controller.animate.value ? animatePosition!.leftAfter : animatePosition!.leftBefore,
        bottom: controller.animate.value ? animatePosition!.bottomAfter : animatePosition!.bottomBefore,
        right: controller.animate.value ? animatePosition!.rightAfter : animatePosition!.rightBefore,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 1000),
          opacity: controller.animate.value ? 1 : 0,
          child: widgetChild,
        ),
      );
    });
  }
}
