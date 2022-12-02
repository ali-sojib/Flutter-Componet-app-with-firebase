import 'package:flutter/material.dart';

import '../../../../common_widgets/form/form_footer_widget.dart';
import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constant/image_strings.dart';
import '../../../../constant/sizes.dart';
import '../../../../constant/text_strings.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(sDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(img: sWelcomeScreenImage, title: sLoginTitle, subTitle: sLoginSubTitle),
                const LoginForm(),
                FormFooterWidget(ftText: sDontHaveAnAccount, sdText: sSignUp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
