import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  FormHeaderWidget({
    Key? key,
    this.imageColor,
    this.heightBetween,
    required this.img,
    required this.title,
    required this.subTitle,
    this.imageHeight = 0.2,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign,
  }) : super(key: key);

  // final Size size;
  String img, title, subTitle;
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image: AssetImage(img), color: imageColor, height: size.height * imageHeight),
        SizedBox(height: heightBetween),
        Text(title, style: Theme.of(context).textTheme.headline1),
        Text(subTitle, textAlign: textAlign, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
