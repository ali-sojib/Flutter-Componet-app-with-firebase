import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  FormHeaderWidget({
    Key? key,
    // required this.size,
    required this.img,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  // final Size size;
  String img, title, subTitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(img), height: size.height * 0.2),
        Text(title, style: Theme.of(context).textTheme.headline1),
        Text(subTitle, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}