import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_app_with_firebase/src/constant/sizes.dart';
import 'package:flutter_app_with_firebase/src/constant/text_strings.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/signup/signup_form_widget.dart';

import '../../../../common_widgets/form/form_footer_widget.dart';
import '../../../../constant/image_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(sDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                  img: sWelcomeScreenImage,
                  title: sSignupTitle,
                  subTitle: sSignupSubTitle,
                ),
                const SignUpFormWidget(),
                FormFooterWidget(ftText: sAlreadyHaveAnAccount, sdText: sLogin)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
