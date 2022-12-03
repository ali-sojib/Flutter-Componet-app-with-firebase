import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/constant/sizes.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';
import 'package:get/get.dart';
import '../../../../../constant/text_strings.dart';
import '../forget_password_mail/forget_password_mail.dart';
import 'forget_passwrod_btn_widget.dart';

class ForgetPasswordScreen {
  ///making static to accsess any mathod form outside of class
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(sDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(sForgetPasswordTitle, style: Theme.of(context).textTheme.headline2),
            Text(sForgetPasswordSubTitle, style: Theme.of(context).textTheme.bodyText2),
            const SizedBox(height: 30.0),
            ForgetPasswordBtnWidget(
              onClick: () {
                Navigator.pop(context);
                Get.to(ForgetPasswordMailScreen());
              },
              btnIcon: Icons.email_outlined,
              title: sEmail,
              subTitle: sResetViaEMail,
            ),
            const SizedBox(height: 20.0),
            ForgetPasswordBtnWidget(
              onClick: () {
                Navigator.pop(context);
                Get.to(ForgetPasswordPhoneScreen());
              },
              btnIcon: Icons.mobile_friendly_rounded,
              title: sPhoneNo,
              subTitle: sResetViaPhone,
            ),
          ],
        ),
      ),
    );
  }
}
