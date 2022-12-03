import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  ForgetPasswordBtnWidget({
    Key? key,
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onClick,
  }) : super(key: key);

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200,
        ), // BoxDecoration
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(btnIcon, size: 60.0),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headline6),
                Text(subTitle, style: Theme.of(context).textTheme.bodyText2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
