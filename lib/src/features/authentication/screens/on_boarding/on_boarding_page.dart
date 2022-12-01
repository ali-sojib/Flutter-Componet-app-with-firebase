import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constant/sizes.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(sDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image(
            image: AssetImage(model.image),
            height: model.sizeHeight * 0.5,
          ),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.headline4, textAlign: TextAlign.center),
              Text(model.subTitle, textAlign: TextAlign.center),
            ],
          ),
          Text(model.counterText),
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}
