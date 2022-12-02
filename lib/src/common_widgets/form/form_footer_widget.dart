import 'package:flutter/material.dart';

import '../../constant/image_strings.dart';
import '../../constant/sizes.dart';
import '../../constant/text_strings.dart';

class FormFooterWidget extends StatelessWidget {
  FormFooterWidget({
    Key? key,
    required this.ftText,
    required this.sdText,
  }) : super(key: key);

  String ftText, sdText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: sFormHeight - 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(image: AssetImage(sGoogleLogoImage), width: 20.0),
            onPressed: () {},
            label: Text(sSignInWithGoogle),
          ),
        ),
        const SizedBox(height: sFormHeight - 20),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
              text: ftText,
              style: Theme.of(context).textTheme.bodyText1,
              children: [
                TextSpan(
                  text: sdText,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
