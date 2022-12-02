import 'package:flutter/material.dart';

import '../../../../constant/image_strings.dart';
import '../../../../constant/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(sWelcomeScreenImage), height: size.height * 0.2),
        Text(sLoginTitle, style: Theme.of(context).textTheme.headline1),
        Text(sLoginSubTitle, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
