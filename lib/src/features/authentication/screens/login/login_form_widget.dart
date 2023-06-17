import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:get/get.dart';

import '../../../../constant/sizes.dart';
import '../../../../constant/text_strings.dart';
import '../../controllers/login_controller.dart';
import '../forget_password/forget_password_options/forget_passwrod_btn_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: sFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: sEmail,
                  hintText: sEmail,
                  border: OutlineInputBorder()), // InputDecoration
            ),
            const SizedBox(height: sFormHeight - 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: sPassword,
                hintText: sPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: sFormHeight - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: Text(sForgetPassword),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print(
                      'pressssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss 000000');
                  if (_formKey.currentState!.validate()) {
                    print(
                        'presssssssssssssssssssssss        _formKey.currentState!.validate()      sssssssssssssssssssssssss 000000');

                    SignInController.instance.loginUser(
                        controller.email.text.trim(),
                        controller.password.text.trim());
                  }
                },
                child: Text(sLogin.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
