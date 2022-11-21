import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/constant/colors.dart';
import 'package:flutter_app_with_firebase/src/constant/image_strings.dart';
import 'package:flutter_app_with_firebase/src/constant/sizes.dart';
import 'package:flutter_app_with_firebase/src/constant/text_strings.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/welcome/welcome_scree.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1000),
            top: animate ? 0 : -30,
            left: animate ? 0 : -30,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1000),
              opacity: animate ? 1 : 0,
              child: Image(height: 180, width: 250, image: AssetImage(sSplashTopIcon)),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1000),
            top: 180,
            left: animate ? sDefaultSize : -80,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1000),
              opacity: animate ? 1 : 0,
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
            bottom: animate ? 200 : 0,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1000),
              opacity: animate ? 1 : 0,
              child: Image(height: 350, width: 350, image: AssetImage(sSplashImage)),
            ),
          ),
          Positioned(
            bottom: animate ? 100 : 0,
            right: 10,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1000),
              opacity: animate ? 1 : 0,
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
      ),
    );
  }

  void startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 1));
    setState(() => animate = true);
    await Future.delayed(const Duration(milliseconds: 5000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
