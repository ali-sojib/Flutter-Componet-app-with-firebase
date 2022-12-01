import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/constant/colors.dart';
import 'package:flutter_app_with_firebase/src/constant/image_strings.dart';
import 'package:flutter_app_with_firebase/src/constant/sizes.dart';
import 'package:flutter_app_with_firebase/src/constant/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? sSecondaryColor : sPrimaryColor,
      body: Container(
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
    );
  }
}
